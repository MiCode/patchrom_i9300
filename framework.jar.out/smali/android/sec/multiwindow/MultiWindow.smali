.class public Landroid/sec/multiwindow/MultiWindow;
.super Ljava/lang/Object;
.source "MultiWindow.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindow;


# static fields
.field protected static final TAG:Ljava/lang/String; = "MultiWindow"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIntent:Landroid/content/Intent;

.field protected mService:Landroid/sec/multiwindow/IMultiWindowService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "service"
    .parameter "className"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindow;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "service"
    .parameter "intent"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindow;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    .line 46
    iput-object p3, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method protected static isEnabledComponentName(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "context"
    .parameter "className"

    .prologue
    .line 371
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public finish()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindow;->finish(I)Z

    move-result v0

    return v0
.end method

.method public finish(I)Z
    .locals 5
    .parameter "taskId"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 95
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 104
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 100
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->stop(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 104
    .restart local v1       #Result:I
    goto :goto_0

    .line 101
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 102
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public fitToHalf(I)Z
    .locals 5
    .parameter "direction"

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, Result:Z
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    move v1, v0

    .line 326
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 316
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 317
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_1

    move v1, v0

    .line 318
    .restart local v1       #Result:I
    goto :goto_0

    .line 322
    .end local v1           #Result:I
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->fitToHalf(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 326
    .restart local v1       #Result:I
    goto :goto_0

    .line 323
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 324
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getHeight()I
    .locals 5

    .prologue
    .line 132
    const/4 v0, -0x1

    .line 134
    .local v0, Result:I
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 135
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 144
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 140
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->getHeight(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 144
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .line 141
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :catch_0
    move-exception v3

    .line 142
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getMinimumSize()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, Result:Landroid/graphics/Point;
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 288
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move-object v1, v0

    .line 306
    .end local v0           #Result:Landroid/graphics/Point;
    .local v1, Result:Landroid/graphics/Point;
    :goto_0
    return-object v1

    .line 292
    .end local v1           #Result:Landroid/graphics/Point;
    .restart local v0       #Result:Landroid/graphics/Point;
    :cond_0
    const/4 v3, 0x0

    .line 294
    .local v3, data:Landroid/graphics/Rect;
    :try_start_0
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v5, v2}, Landroid/sec/multiwindow/IMultiWindowService;->getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 299
    :goto_1
    if-eqz v3, :cond_1

    .line 300
    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-lez v5, :cond_1

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-lez v5, :cond_1

    .line 301
    new-instance v0, Landroid/graphics/Point;

    .end local v0           #Result:Landroid/graphics/Point;
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 302
    .restart local v0       #Result:Landroid/graphics/Point;
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Point;->set(II)V

    :cond_1
    move-object v1, v0

    .line 306
    .end local v0           #Result:Landroid/graphics/Point;
    .restart local v1       #Result:Landroid/graphics/Point;
    goto :goto_0

    .line 295
    .end local v1           #Result:Landroid/graphics/Point;
    .restart local v0       #Result:Landroid/graphics/Point;
    :catch_0
    move-exception v4

    .line 296
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, Result:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 191
    .local v1, cmpnt:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 192
    const/4 v4, 0x0

    .line 201
    :goto_0
    return-object v4

    .line 195
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v1}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v3

    .line 196
    .local v3, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    .end local v3           #mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_1
    :goto_1
    const-string v4, "MultiWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getRect] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 201
    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public getWidth()I
    .locals 5

    .prologue
    .line 115
    const/4 v0, -0x1

    .line 117
    .local v0, Result:I
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 118
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 127
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 123
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->getWidth(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 127
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0

    .line 124
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :catch_0
    move-exception v3

    .line 125
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public isMaximized()Z
    .locals 5

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 152
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 161
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 157
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->isMaximized(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 161
    .restart local v1       #Result:I
    goto :goto_0

    .line 158
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 159
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public maximize()Z
    .locals 5

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 209
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 219
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 214
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->maximize(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 219
    .restart local v1       #Result:I
    goto :goto_0

    .line 215
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 216
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public minimize()Z
    .locals 5

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 245
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 254
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 249
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->minimize(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 254
    .restart local v1       #Result:I
    goto :goto_0

    .line 250
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 251
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public pinUp(Z)Z
    .locals 7
    .parameter "value"

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 334
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 344
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 339
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->pinupWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 340
    const-string v4, "MultiWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pinUp] className:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 344
    .restart local v1       #Result:I
    goto :goto_0

    .line 341
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 342
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public relayout(Landroid/graphics/Rect;)Z
    .locals 8
    .parameter "rect"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, Result:Z
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 170
    .local v2, cmpnt:Landroid/content/ComponentName;
    const-string v5, "MultiWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[relayout] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v1, v0

    .line 184
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 176
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v5, v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->setPositionWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 177
    .local v4, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    if-eqz v4, :cond_2

    .line 178
    const/4 v0, 0x1

    .end local v4           #mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_2
    :goto_1
    move v1, v0

    .line 184
    .restart local v1       #Result:I
    goto :goto_0

    .line 180
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 181
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public restore()Z
    .locals 5

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 227
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 237
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 232
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2}, Landroid/sec/multiwindow/IMultiWindowService;->restore(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 237
    .restart local v1       #Result:I
    goto :goto_0

    .line 233
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 234
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public setMinimumSize(II)Z
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, Result:Z
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v1, v0

    .line 280
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 269
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 270
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_2

    move v1, v0

    .line 271
    .restart local v1       #Result:I
    goto :goto_0

    .line 275
    .end local v1           #Result:I
    :cond_2
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    invoke-interface {v4, v2, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->setMinimumSize(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 280
    .restart local v1       #Result:I
    goto :goto_0

    .line 276
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 277
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

.method public start()Z
    .locals 6

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, Result:Z
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 70
    .local v2, cmpnt:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    move v1, v0

    .line 83
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 74
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/sec/multiwindow/MultiWindow;->isEnabledComponentName(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v0

    .line 75
    .restart local v1       #Result:I
    goto :goto_0

    .line 79
    .end local v1           #Result:I
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindow;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    iget-object v5, p0, Landroid/sec/multiwindow/MultiWindow;->mIntent:Landroid/content/Intent;

    invoke-interface {v4, v5}, Landroid/sec/multiwindow/IMultiWindowService;->start(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 83
    .restart local v1       #Result:I
    goto :goto_0

    .line 80
    .end local v1           #Result:I
    :catch_0
    move-exception v3

    .line 81
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_1
.end method

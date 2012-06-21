.class Lcom/android/server/sec/MultiWindowActionHandler;
.super Landroid/os/Handler;
.source "MultiWindowActionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowActionHandler"


# instance fields
.field private final MSG_CALL_CHANGE:I

.field private final MSG_CALL_FINISH:I

.field private final MSG_CALL_PAUSE:I

.field private final MSG_CALL_PRECHANGE:I

.field private final MSG_CALL_RESIZE:I

.field private final MSG_CALL_RESUME:I

.field private mPauseValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreResizeRect:Landroid/graphics/Rect;

.field private mResizeRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_RESUME:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_FINISH:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_RESIZE:I

    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_PAUSE:I

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_CHANGE:I

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/sec/MultiWindowActionHandler;->MSG_CALL_PRECHANGE:I

    .line 29
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mResizeRect:Landroid/graphics/Rect;

    .line 32
    iput-object v1, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPreResizeRect:Landroid/graphics/Rect;

    return-void
.end method

.method private makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;
    .locals 1
    .parameter "acAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v0
.end method


# virtual methods
.method public actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V
    .locals 3
    .parameter "acAction"
    .parameter "resizeRect"

    .prologue
    .line 172
    iput-object p2, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mResizeRect:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 174
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 177
    return-void
.end method

.method public actionFinish(Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 2
    .parameter "acAction"

    .prologue
    .line 143
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 144
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method public actionFinish(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/sec/multiwindow/IMultiWindowAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 151
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 152
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void
.end method

.method public actionPause(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 165
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 166
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    iput-object p2, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method

.method public actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "acAction"
    .parameter "resizePreRect"

    .prologue
    .line 180
    iput-object p2, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPreResizeRect:Landroid/graphics/Rect;

    .line 181
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 182
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 185
    return-void
.end method

.method public actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 2
    .parameter "acAction"

    .prologue
    .line 157
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 158
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 159
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public actionResume(Landroid/sec/multiwindow/IMultiWindowAction;)V
    .locals 2
    .parameter "acAction"

    .prologue
    .line 136
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 137
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 138
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowActionHandler;->makeList(Landroid/sec/multiwindow/IMultiWindowAction;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/server/sec/MultiWindowActionHandler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 37
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 38
    .local v1, activityActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 126
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 43
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .line 45
    .local v0, action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_3

    .line 46
    :try_start_0
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->actionResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 53
    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .line 55
    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_4

    .line 56
    :try_start_1
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->actionFinish()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 57
    :catch_1
    move-exception v2

    .line 58
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 63
    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .line 65
    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_5

    .line 66
    :try_start_2
    const-string v6, "MultiWindowActionHandler"

    const-string v7, "MSG_CALL_RESIZE"

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-interface {v0}, Landroid/sec/multiwindow/IMultiWindowAction;->actionResize()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 69
    :catch_2
    move-exception v2

    .line 70
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 75
    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 78
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 79
    .local v5, iCount:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v5, :cond_6

    .line 80
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 81
    iput-object v8, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    goto :goto_0

    .line 85
    :cond_6
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v5, :cond_8

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .line 88
    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_7

    .line 89
    :try_start_3
    const-string v6, "MultiWindowActionHandler"

    const-string v7, "MSG_CALL_PAUSE"

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/sec/multiwindow/IMultiWindowAction;->actionVisible(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 85
    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 92
    :catch_3
    move-exception v2

    .line 93
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 96
    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_8
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 97
    iput-object v8, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPauseValues:Ljava/util/List;

    goto/16 :goto_1

    .line 101
    .end local v3           #i:I
    .end local v5           #iCount:I
    :pswitch_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .line 103
    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_9

    .line 104
    :try_start_4
    const-string v6, "MultiWindowActionHandler"

    const-string v7, "MSG_CALL_CHANGE"

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mResizeRect:Landroid/graphics/Rect;

    invoke-interface {v0, v6}, Landroid/sec/multiwindow/IMultiWindowAction;->actionChangeSize(Landroid/graphics/Rect;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 107
    :catch_4
    move-exception v2

    .line 108
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 114
    .end local v0           #action:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v4           #i$:Ljava/util/Iterator;
    :pswitch_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/IMultiWindowAction;

    .line 116
    .restart local v0       #action:Landroid/sec/multiwindow/IMultiWindowAction;
    if-eqz v0, :cond_a

    .line 117
    :try_start_5
    const-string v6, "MultiWindowActionHandler"

    const-string v7, "MSG_CALL_PRECHANGE"

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v6, p0, Lcom/android/server/sec/MultiWindowActionHandler;->mPreResizeRect:Landroid/graphics/Rect;

    invoke-interface {v0, v6}, Landroid/sec/multiwindow/IMultiWindowAction;->actionPreChangeSize(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 120
    :catch_5
    move-exception v2

    .line 121
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

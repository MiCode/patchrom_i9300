.class public abstract Landroid/sec/multiwindow/MWOnDragActionListener;
.super Landroid/sec/multiwindow/MWOnDragListener;
.source "MWOnDragActionListener.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowListener;


# instance fields
.field private final mBinder:Landroid/sec/multiwindow/IMultiWindowListener$Stub;

.field private mClassName:Landroid/content/ComponentName;

.field private mMulti:Landroid/sec/multiwindow/IMultiWindowManager;

.field private mMwContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/sec/multiwindow/MWOnDragListener;-><init>()V

    .line 65
    new-instance v0, Landroid/sec/multiwindow/MWOnDragActionListener$1;

    invoke-direct {v0, p0}, Landroid/sec/multiwindow/MWOnDragActionListener$1;-><init>(Landroid/sec/multiwindow/MWOnDragActionListener;)V

    iput-object v0, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mBinder:Landroid/sec/multiwindow/IMultiWindowListener$Stub;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "className"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/sec/multiwindow/MWOnDragListener;-><init>()V

    .line 65
    new-instance v0, Landroid/sec/multiwindow/MWOnDragActionListener$1;

    invoke-direct {v0, p0}, Landroid/sec/multiwindow/MWOnDragActionListener$1;-><init>(Landroid/sec/multiwindow/MWOnDragActionListener;)V

    iput-object v0, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mBinder:Landroid/sec/multiwindow/IMultiWindowListener$Stub;

    .line 40
    iput-object p1, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mMwContext:Landroid/content/Context;

    .line 41
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mMulti:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 43
    iput-object p2, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mClassName:Landroid/content/ComponentName;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mBinder:Landroid/sec/multiwindow/IMultiWindowListener$Stub;

    return-object v0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/sec/multiwindow/MWOnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    .line 55
    iget-object v1, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mMwContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 57
    .local v0, action:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mMulti:Landroid/sec/multiwindow/IMultiWindowManager;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mMulti:Landroid/sec/multiwindow/IMultiWindowManager;

    iget-object v2, p0, Landroid/sec/multiwindow/MWOnDragActionListener;->mClassName:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p0}, Landroid/sec/multiwindow/IMultiWindowManager;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z

    .line 62
    .end local v0           #action:I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public abstract onDropAction()V
.end method

.method public onResumeFinish()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/sec/multiwindow/MWOnDragActionListener;->onDropAction()V

    .line 79
    return-void
.end method

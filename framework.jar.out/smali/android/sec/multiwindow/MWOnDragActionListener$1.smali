.class Landroid/sec/multiwindow/MWOnDragActionListener$1;
.super Landroid/sec/multiwindow/IMultiWindowListener$Stub;
.source "MWOnDragActionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MWOnDragActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/multiwindow/MWOnDragActionListener;


# direct methods
.method constructor <init>(Landroid/sec/multiwindow/MWOnDragActionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Landroid/sec/multiwindow/MWOnDragActionListener$1;->this$0:Landroid/sec/multiwindow/MWOnDragActionListener;

    invoke-direct {p0}, Landroid/sec/multiwindow/IMultiWindowListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResumeFinish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/sec/multiwindow/MWOnDragActionListener$1;->this$0:Landroid/sec/multiwindow/MWOnDragActionListener;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MWOnDragActionListener;->onResumeFinish()V

    .line 69
    return-void
.end method

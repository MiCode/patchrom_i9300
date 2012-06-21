.class Landroid/sec/multiwindow/MultiWindowListenerImpl$1;
.super Landroid/sec/multiwindow/IMultiWindowListener$Stub;
.source "MultiWindowListenerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MultiWindowListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/multiwindow/MultiWindowListenerImpl;


# direct methods
.method constructor <init>(Landroid/sec/multiwindow/MultiWindowListenerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowListenerImpl$1;->this$0:Landroid/sec/multiwindow/MultiWindowListenerImpl;

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
    .line 15
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowListenerImpl$1;->this$0:Landroid/sec/multiwindow/MultiWindowListenerImpl;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowListenerImpl;->onResumeFinish()V

    .line 16
    return-void
.end method

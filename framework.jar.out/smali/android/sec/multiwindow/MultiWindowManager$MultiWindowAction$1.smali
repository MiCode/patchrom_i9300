.class Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;
.super Landroid/sec/multiwindow/IMultiWindowAction$Stub;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;


# direct methods
.method constructor <init>(Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1561
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-direct {p0}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public actionChangeSize(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "resizeRect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1597
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionChangeSize "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionChangeSize(Landroid/graphics/Rect;)V

    .line 1599
    return-void
.end method

.method public actionFinish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1576
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionFinish "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionFinish()V

    .line 1578
    return-void
.end method

.method public actionPreChangeSize(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "resizePreRect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1603
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionPreChangeSize "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionPreChangeSize(Landroid/graphics/Rect;)V

    .line 1605
    return-void
.end method

.method public actionResize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1585
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionResize "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionResize()V

    .line 1587
    return-void
.end method

.method public actionResume()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1567
    const-string v0, "MultiWindowManager"

    const-string v1, "[Activity.MultiWindowAction] actionResume "

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionResume()V

    .line 1569
    return-void
.end method

.method public actionVisible(Z)V
    .locals 3
    .parameter "visibled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1591
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Activity.MultiWindowAction] actionVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction$1;->this$1:Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-virtual {v0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;->actionVisible(Z)V

    .line 1593
    return-void
.end method

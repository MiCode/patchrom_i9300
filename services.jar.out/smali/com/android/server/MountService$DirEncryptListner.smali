.class Lcom/android/server/MountService$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 3511
    iput-object p1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "operation"
    .parameter "status"

    .prologue
    .line 3518
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEncryptionStatusChanged: operation = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    iget-object v0, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v0, v0, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "done"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3521
    iget-object v0, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v0}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v0

    const-string v1, "volume mount %s moveMount"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 3523
    :cond_0
    return-void
.end method

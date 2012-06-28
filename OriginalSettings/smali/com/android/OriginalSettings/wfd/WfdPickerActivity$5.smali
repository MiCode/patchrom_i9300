.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 923
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connect fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$1200(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 930
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v1, 0xb

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2700(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 931
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$5;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v1, 0xd

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2800(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 932
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 920
    const-string v0, "WfdPickerActivity"

    const-string v1, " connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void
.end method

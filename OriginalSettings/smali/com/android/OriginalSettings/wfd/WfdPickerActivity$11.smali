.class Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;
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
    .line 1043
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v3, 0xe

    const/16 v2, 0xd

    .line 1047
    const-string v0, "WfdPickerActivity"

    const-string v1, "createErrorHandlingDialog cancel is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1053
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v0, v2}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3400(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 1059
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->bStartConnectingFlag:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$2002(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;Z)Z

    .line 1060
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    const/16 v1, 0xb

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3600(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    .line 1062
    :cond_2
    return-void

    .line 1054
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->mWFDDialogState:I
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3000(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WfdPickerActivity$11;->this$0:Lcom/android/OriginalSettings/wfd/WfdPickerActivity;

    #calls: Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->removeDialog(I)V
    invoke-static {v0, v3}, Lcom/android/OriginalSettings/wfd/WfdPickerActivity;->access$3500(Lcom/android/OriginalSettings/wfd/WfdPickerActivity;I)V

    goto :goto_0
.end method

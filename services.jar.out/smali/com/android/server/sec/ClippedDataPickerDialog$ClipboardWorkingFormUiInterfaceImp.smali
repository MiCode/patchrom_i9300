.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardWorkingFormUiInterfaceImp"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1389
    invoke-direct {p0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 1474
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "asBinder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-object v0
.end method

.method public setClipboardDataListChange(I)V
    .locals 6
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1437
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v0

    .line 1438
    .local v0, currentDataCnt:I
    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    const/16 v0, 0x14

    .line 1440
    :cond_0
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ClipboardServiceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setClipboardDataListChange() mDataCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentDataCnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v2

    if-gt v2, v0, :cond_3

    .line 1442
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v2, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$502(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    .line 1446
    :goto_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v2, v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1002(Lcom/android/server/sec/ClippedDataPickerDialog;I)I

    .line 1448
    move v1, p1

    .line 1449
    .local v1, flag:I
    if-ne v1, v5, :cond_2

    .line 1450
    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    .line 1453
    :cond_2
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    new-instance v3, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$2;

    invoke-direct {v3, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->post(Ljava/lang/Runnable;)Z

    .line 1470
    return-void

    .line 1444
    .end local v1           #flag:I
    :cond_3
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mAddScenario:Z
    invoke-static {v2, v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$502(Lcom/android/server/sec/ClippedDataPickerDialog;Z)Z

    goto :goto_0
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .locals 3
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1413
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setClipboardDataMgr called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$602(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;

    .line 1415
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v0

    invoke-interface {v0}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v0

    sput v0, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    .line 1419
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;
    invoke-static {v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1002(Lcom/android/server/sec/ClippedDataPickerDialog;I)I

    .line 1420
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClipboardDataMgr() mDataCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mDataCount:I
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$1000(Lcom/android/server/sec/ClippedDataPickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    invoke-direct {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v1, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 1423
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v0, v0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v1, v1, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1424
    return-void
.end method

.method public setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1430
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardServiceEx"

    const-string v1, "setClipboardDataUiEvent(IClipboardDataUiEvent arg0) called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #setter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v0, p1}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$302(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 1432
    return-void
.end method

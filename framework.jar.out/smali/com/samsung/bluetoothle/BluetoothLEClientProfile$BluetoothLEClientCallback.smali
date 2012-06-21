.class Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
.super Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack$Stub;
.source "BluetoothLEClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLEClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothLEClientCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientCallback"


# instance fields
.field final synthetic this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;


# direct methods
.method constructor <init>(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-direct {p0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack$Stub;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceAddress"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v2, "BluetoothLEClientCallback"

    const-string v3, "----- onConnected"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$202(I)I

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->init(Landroid/bluetooth/BluetoothDevice;Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onLEDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 94
    return-void
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .locals 5
    .parameter "deviceAddress"

    .prologue
    const/4 v4, 0x0

    .line 97
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v2, "BluetoothLEClientCallback"

    const-string v3, "----- onDisconnected"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$202(I)I

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->isCharDiscoveryInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->setCharDiscoveryProgress(Z)V

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onLEDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 106
    return-void
.end method

.method public onGetRssiValue(Ljava/lang/String;)V
    .locals 3
    .parameter "rssival"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v1, "BluetoothLEClientCallback"

    const-string/jumbo v2, "onGetRssiValue"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onGetRssiValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onLinkLoss()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    const-string v1, "BluetoothLEClientCallback"

    const-string/jumbo v2, "onLinkLoss"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;->this$0:Lcom/samsung/bluetoothle/BluetoothLEClientProfile;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onLELinkLoss(Landroid/bluetooth/BluetoothDevice;)V

    .line 112
    return-void
.end method

.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final TRANSACTION_addRfcommServiceRecord:I = 0x2d

.field static final TRANSACTION_allowIncomingProfileConnect:I = 0x2f

.field static final TRANSACTION_cancelBondProcess:I = 0x17

.field static final TRANSACTION_cancelDiscovery:I = 0xf

.field static final TRANSACTION_cancelPairingUserInput:I = 0x27

.field static final TRANSACTION_changeApplicationBluetoothState:I = 0x14

.field static final TRANSACTION_connectChannelToSink:I = 0x44

.field static final TRANSACTION_connectChannelToSource:I = 0x43

.field static final TRANSACTION_connectHeadset:I = 0x30

.field static final TRANSACTION_connectInputDevice:I = 0x33

.field static final TRANSACTION_connectPanDevice:I = 0x3f

.field static final TRANSACTION_createBond:I = 0x15

.field static final TRANSACTION_createBondOutOfBand:I = 0x16

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disconnectChannel:I = 0x45

.field static final TRANSACTION_disconnectHeadset:I = 0x31

.field static final TRANSACTION_disconnectInputDevice:I = 0x34

.field static final TRANSACTION_disconnectPanDevice:I = 0x40

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_fetchRemoteUuids:I = 0x21

.field static final TRANSACTION_gattDeviceConnect:I = 0x52

.field static final TRANSACTION_gattDeviceDisconnect:I = 0x53

.field static final TRANSACTION_gattDeviceDiscoverPrimary:I = 0x59

.field static final TRANSACTION_gattDiscoveryCharacteristics:I = 0x56

.field static final TRANSACTION_gattGetCharProperties:I = 0x57

.field static final TRANSACTION_gattRegisterCharWatcher:I = 0x5a

.field static final TRANSACTION_gattSetCharProperty:I = 0x58

.field static final TRANSACTION_gattUnregisterCharWatcher:I = 0x5b

.field static final TRANSACTION_getAdapterConnectionState:I = 0x12

.field static final TRANSACTION_getAddress:I = 0x5

.field static final TRANSACTION_getAddressFromObjectPathForLE:I = 0x5c

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x1a

.field static final TRANSACTION_getConnectedHealthDevices:I = 0x47

.field static final TRANSACTION_getConnectedInputDevices:I = 0x35

.field static final TRANSACTION_getConnectedPanDevices:I = 0x3d

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xc

.field static final TRANSACTION_getGattConnectionState:I = 0x5d

.field static final TRANSACTION_getHealthDeviceConnectionState:I = 0x49

.field static final TRANSACTION_getHealthDevicesMatchingConnectionStates:I = 0x48

.field static final TRANSACTION_getInputDeviceConnectionState:I = 0x37

.field static final TRANSACTION_getInputDevicePriority:I = 0x39

.field static final TRANSACTION_getInputDevicesMatchingConnectionStates:I = 0x36

.field static final TRANSACTION_getMainChannelFd:I = 0x46

.field static final TRANSACTION_getMapTrustState:I = 0x2c

.field static final TRANSACTION_getName:I = 0x6

.field static final TRANSACTION_getPanDeviceConnectionState:I = 0x3c

.field static final TRANSACTION_getPanDevicesMatchingConnectionStates:I = 0x3e

.field static final TRANSACTION_getProfileConnectionState:I = 0x13

.field static final TRANSACTION_getRemoteAlias:I = 0x1d

.field static final TRANSACTION_getRemoteClass:I = 0x1f

.field static final TRANSACTION_getRemoteDeviceType:I = 0x4e

.field static final TRANSACTION_getRemoteHDPDataTypeList:I = 0x60

.field static final TRANSACTION_getRemoteName:I = 0x1c

.field static final TRANSACTION_getRemotePrimaryService:I = 0x4d

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x22

.field static final TRANSACTION_getRemoteServiceCharPaths:I = 0x51

.field static final TRANSACTION_getRemoteServicePaths:I = 0x4f

.field static final TRANSACTION_getRemoteServiceUUID:I = 0x50

.field static final TRANSACTION_getRemoteUuids:I = 0x20

.field static final TRANSACTION_getRssiValue:I = 0x5f

.field static final TRANSACTION_getScanMode:I = 0x9

.field static final TRANSACTION_getTrustState:I = 0x29

.field static final TRANSACTION_getUuids:I = 0x8

.field static final TRANSACTION_isBluetoothDock:I = 0x2a

.field static final TRANSACTION_isDiscovering:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isTetheringOn:I = 0x3a

.field static final TRANSACTION_leTestEnd:I = 0xa

.field static final TRANSACTION_listBonds:I = 0x19

.field static final TRANSACTION_notifyIncomingConnection:I = 0x32

.field static final TRANSACTION_readOutOfBandData:I = 0x11

.field static final TRANSACTION_registerAppConfiguration:I = 0x41

.field static final TRANSACTION_registerGattCallback:I = 0x54

.field static final TRANSACTION_removeBond:I = 0x18

.field static final TRANSACTION_removeServiceRecord:I = 0x2e

.field static final TRANSACTION_sendConnectionStateChange:I = 0x4a

.field static final TRANSACTION_setBluetoothTethering:I = 0x3b

.field static final TRANSACTION_setContentProtection:I = 0x4b

.field static final TRANSACTION_setDeviceOutOfBandData:I = 0x1b

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xd

.field static final TRANSACTION_setInputDevicePriority:I = 0x38

.field static final TRANSACTION_setMapTrust:I = 0x2b

.field static final TRANSACTION_setName:I = 0x7

.field static final TRANSACTION_setNbParameters:I = 0x62

.field static final TRANSACTION_setPairingConfirmation:I = 0x25

.field static final TRANSACTION_setPasskey:I = 0x24

.field static final TRANSACTION_setPin:I = 0x23

.field static final TRANSACTION_setRemoteAlias:I = 0x1e

.field static final TRANSACTION_setRemoteOutOfBandData:I = 0x26

.field static final TRANSACTION_setScanLE:I = 0x5e

.field static final TRANSACTION_setScanMode:I = 0xb

.field static final TRANSACTION_setScoPathChange:I = 0x4c

.field static final TRANSACTION_setTrust:I = 0x28

.field static final TRANSACTION_setWbsParameters:I = 0x61

.field static final TRANSACTION_startDiscovery:I = 0xe

.field static final TRANSACTION_unregisterAppConfiguration:I = 0x42

.field static final TRANSACTION_unregisterGattCallback:I = 0x55


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetooth;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 47
    :sswitch_0
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isEnabled()Z

    move-result v6

    .line 54
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v6, :cond_0

    move v0, v8

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v6           #_result:Z
    :sswitch_2
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothState()I

    move-result v6

    .line 62
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v6           #_result:I
    :sswitch_3
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->enable()Z

    move-result v6

    .line 70
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v6, :cond_1

    move v0, v8

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 76
    .end local v6           #_result:Z
    :sswitch_4
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    move v1, v8

    .line 79
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disable(Z)Z

    move-result v6

    .line 80
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v6, :cond_2

    move v0, v8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_3
    move v1, v0

    .line 78
    goto :goto_1

    .line 86
    :sswitch_5
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getName()Ljava/lang/String;

    move-result-object v6

    .line 96
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;)Z

    move-result v6

    .line 106
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v6, :cond_4

    move v0, v8

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_8
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 114
    .local v6, _result:[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 120
    .end local v6           #_result:[Landroid/os/ParcelUuid;
    :sswitch_9
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode()I

    move-result v6

    .line 122
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 128
    .end local v6           #_result:I
    :sswitch_a
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->leTestEnd()Z

    move-result v6

    .line 130
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v6, :cond_5

    move v0, v8

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 136
    .end local v6           #_result:Z
    :sswitch_b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(II)Z

    move-result v6

    .line 142
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v6, :cond_6

    move v0, v8

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 148
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout()I

    move-result v6

    .line 150
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 156
    .end local v6           #_result:I
    :sswitch_d
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(I)Z

    move-result v6

    .line 160
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v6, :cond_7

    move v0, v8

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 166
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_e
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery()Z

    move-result v6

    .line 168
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v6, :cond_8

    move v0, v8

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v6           #_result:Z
    :sswitch_f
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery()Z

    move-result v6

    .line 176
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v6, :cond_9

    move v0, v8

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v6           #_result:Z
    :sswitch_10
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering()Z

    move-result v6

    .line 184
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v6, :cond_a

    move v0, v8

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v6           #_result:Z
    :sswitch_11
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->readOutOfBandData()[B

    move-result-object v6

    .line 192
    .local v6, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 198
    .end local v6           #_result:[B
    :sswitch_12
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState()I

    move-result v6

    .line 200
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 206
    .end local v6           #_result:I
    :sswitch_13
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(I)I

    move-result v6

    .line 210
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 216
    .end local v1           #_arg0:I
    .end local v6           #_result:I
    :sswitch_14
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c

    move v1, v8

    .line 220
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v2

    .line 222
    .local v2, _arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 223
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z

    move-result v6

    .line 224
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v6, :cond_b

    move v0, v8

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v3           #_arg2:Landroid/os/IBinder;
    .end local v6           #_result:Z
    :cond_c
    move v1, v0

    .line 218
    goto :goto_2

    .line 230
    :sswitch_15
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Ljava/lang/String;)Z

    move-result v6

    .line 234
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v6, :cond_d

    move v0, v8

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 240
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_16
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 246
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 247
    .local v3, _arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->createBondOutOfBand(Ljava/lang/String;[B[B)Z

    move-result v6

    .line 248
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v6, :cond_e

    move v0, v8

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 254
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v6           #_result:Z
    :sswitch_17
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 257
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v6

    .line 258
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v6, :cond_f

    move v0, v8

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 264
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_18
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v6

    .line 268
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v6, :cond_10

    move v0, v8

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 274
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_19
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_1a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Ljava/lang/String;)I

    move-result v6

    .line 286
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 292
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_1b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 296
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 298
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 299
    .restart local v3       #_arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDeviceOutOfBandData(Ljava/lang/String;[B[B)Z

    move-result v6

    .line 300
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v6, :cond_11

    move v0, v8

    :cond_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v6           #_result:Z
    :sswitch_1c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 309
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_1d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    .restart local v6       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_1e
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 330
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 332
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    if-eqz v6, :cond_12

    move v0, v8

    :cond_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_1f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 341
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v6

    .line 342
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 348
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:I
    :sswitch_20
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 351
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;

    move-result-object v6

    .line 352
    .local v6, _result:[Landroid/os/ParcelUuid;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 358
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[Landroid/os/ParcelUuid;
    :sswitch_21
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 362
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    .line 363
    sget-object v9, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 369
    .local v2, _arg1:Landroid/os/ParcelUuid;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v3

    .line 370
    .local v3, _arg2:Landroid/bluetooth/IBluetoothCallback;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothCallback;)Z

    move-result v6

    .line 371
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    if-eqz v6, :cond_13

    move v0, v8

    :cond_13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 366
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    .end local v3           #_arg2:Landroid/bluetooth/IBluetoothCallback;
    .end local v6           #_result:Z
    :cond_14
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_3

    .line 377
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_22
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 382
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 387
    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    :goto_4
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceChannel(Ljava/lang/String;Landroid/os/ParcelUuid;)I

    move-result v6

    .line 388
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 385
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    .end local v6           #_result:I
    :cond_15
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_4

    .line 394
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_23
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 399
    .local v2, _arg1:[B
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v6

    .line 400
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v6, :cond_16

    move v0, v8

    :cond_16
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 406
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:[B
    .end local v6           #_result:Z
    :sswitch_24
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 410
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 411
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Ljava/lang/String;I)Z

    move-result v6

    .line 412
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v6, :cond_17

    move v0, v8

    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 418
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_25
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_19

    move v2, v8

    .line 423
    .local v2, _arg1:Z
    :goto_5
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Ljava/lang/String;Z)Z

    move-result v6

    .line 424
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v6, :cond_18

    move v0, v8

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_19
    move v2, v0

    .line 422
    goto :goto_5

    .line 430
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_26
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteOutOfBandData(Ljava/lang/String;)Z

    move-result v6

    .line 434
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v6, :cond_1a

    move v0, v8

    :cond_1a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 440
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_27
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelPairingUserInput(Ljava/lang/String;)Z

    move-result v6

    .line 444
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v6, :cond_1b

    move v0, v8

    :cond_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 450
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_28
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 454
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    move v2, v8

    .line 455
    .restart local v2       #_arg1:Z
    :goto_6
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setTrust(Ljava/lang/String;Z)Z

    move-result v6

    .line 456
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v6, :cond_1c

    move v0, v8

    :cond_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_1d
    move v2, v0

    .line 454
    goto :goto_6

    .line 462
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_29
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getTrustState(Ljava/lang/String;)Z

    move-result v6

    .line 466
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v6, :cond_1e

    move v0, v8

    :cond_1e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 472
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2a
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 475
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isBluetoothDock(Ljava/lang/String;)Z

    move-result v6

    .line 476
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v6, :cond_1f

    move v0, v8

    :cond_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 482
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_21

    move v2, v8

    .line 487
    .restart local v2       #_arg1:Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setMapTrust(Ljava/lang/String;Z)Z

    move-result v6

    .line 488
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v6, :cond_20

    move v0, v8

    :cond_20
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_21
    move v2, v0

    .line 486
    goto :goto_7

    .line 494
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2c
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMapTrustState(Ljava/lang/String;)Z

    move-result v6

    .line 498
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    if-eqz v6, :cond_22

    move v0, v8

    :cond_22
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 504
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_2d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 509
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 515
    .local v2, _arg1:Landroid/os/ParcelUuid;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 517
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 518
    .local v4, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I

    move-result v6

    .line 519
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 512
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/os/IBinder;
    .end local v6           #_result:I
    :cond_23
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/ParcelUuid;
    goto :goto_8

    .line 525
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Landroid/os/ParcelUuid;
    :sswitch_2e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 528
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->removeServiceRecord(I)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 534
    .end local v1           #_arg0:I
    :sswitch_2f
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_25

    .line 537
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 543
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_26

    move v2, v8

    .line 544
    .local v2, _arg1:Z
    :goto_a
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->allowIncomingProfileConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v6

    .line 545
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v6, :cond_24

    move v0, v8

    :cond_24
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 540
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_25
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    :cond_26
    move v2, v0

    .line 543
    goto :goto_a

    .line 551
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_30
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v6

    .line 555
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v6, :cond_27

    move v0, v8

    :cond_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 561
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_31
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disconnectHeadset(Ljava/lang/String;)Z

    move-result v6

    .line 565
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v6, :cond_28

    move v0, v8

    :cond_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 571
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_32
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 575
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2a

    move v2, v8

    .line 576
    .restart local v2       #_arg1:Z
    :goto_b
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->notifyIncomingConnection(Ljava/lang/String;Z)Z

    move-result v6

    .line 577
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    if-eqz v6, :cond_29

    move v0, v8

    :cond_29
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v6           #_result:Z
    :cond_2a
    move v2, v0

    .line 575
    goto :goto_b

    .line 583
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_33
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2c

    .line 586
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 591
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_c
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 592
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 593
    if-eqz v6, :cond_2b

    move v0, v8

    :cond_2b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 589
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_2c
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_c

    .line 598
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_34
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2e

    .line 601
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 606
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_d
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 607
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    if-eqz v6, :cond_2d

    move v0, v8

    :cond_2d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 604
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_2e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 613
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_35
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedInputDevices()Ljava/util/List;

    move-result-object v7

    .line 615
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 621
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_36
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 624
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    .line 625
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 631
    .end local v1           #_arg0:[I
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_37
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 634
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 639
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_e
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 640
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 637
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_2f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 646
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_38
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_31

    .line 649
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 655
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 656
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    .line 657
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v6, :cond_30

    move v0, v8

    :cond_30
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 652
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 663
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_39
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    .line 666
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 671
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_10
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 672
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 669
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_32
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_10

    .line 678
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3a
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->isTetheringOn()Z

    move-result v6

    .line 680
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    if-eqz v6, :cond_33

    move v0, v8

    :cond_33
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 686
    .end local v6           #_result:Z
    :sswitch_3b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_34

    move v1, v8

    .line 689
    .local v1, _arg0:Z
    :goto_11
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothTethering(Z)V

    .line 690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_34
    move v1, v0

    .line 688
    goto :goto_11

    .line 695
    :sswitch_3c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 698
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 703
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_12
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 704
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 701
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_35
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 710
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_3d
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedPanDevices()Ljava/util/List;

    move-result-object v7

    .line 712
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 718
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 721
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getPanDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    .line 722
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 728
    .end local v1           #_arg0:[I
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_3f
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_37

    .line 731
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 736
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_13
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->connectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 737
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    if-eqz v6, :cond_36

    move v0, v8

    :cond_36
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 734
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_37
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 743
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_40
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_39

    .line 746
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 751
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_14
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disconnectPanDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    .line 752
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v6, :cond_38

    move v0, v8

    :cond_38
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 749
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:Z
    :cond_39
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_14

    .line 758
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_41
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3b

    .line 761
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 767
    .local v1, _arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothHealthCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealthCallback;

    move-result-object v2

    .line 768
    .local v2, _arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/IBluetoothHealthCallback;)Z

    move-result v6

    .line 769
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    if-eqz v6, :cond_3a

    move v0, v8

    :cond_3a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 764
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v2           #_arg1:Landroid/bluetooth/IBluetoothHealthCallback;
    .end local v6           #_result:Z
    :cond_3b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_15

    .line 775
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_42
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3d

    .line 778
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 783
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_16
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v6

    .line 784
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    if-eqz v6, :cond_3c

    move v0, v8

    :cond_3c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 781
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Z
    :cond_3d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_16

    .line 790
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_43
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3f

    .line 793
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 799
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_40

    .line 800
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 805
    .local v2, _arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_18
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    move-result v6

    .line 806
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    if-eqz v6, :cond_3e

    move v0, v8

    :cond_3e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 796
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Z
    :cond_3f
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_17

    .line 803
    :cond_40
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_18

    .line 812
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_44
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_42

    .line 815
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 821
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_43

    .line 822
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 828
    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 829
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->connectChannelToSink(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v6

    .line 830
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    if-eqz v6, :cond_41

    move v0, v8

    :cond_41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 818
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v3           #_arg2:I
    .end local v6           #_result:Z
    :cond_42
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_19

    .line 825
    :cond_43
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1a

    .line 836
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_45
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_45

    .line 839
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 845
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_46

    .line 846
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 852
    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 853
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->disconnectChannel(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;I)Z

    move-result v6

    .line 854
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    if-eqz v6, :cond_44

    move v0, v8

    :cond_44
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 842
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v3           #_arg2:I
    .end local v6           #_result:Z
    :cond_45
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1b

    .line 849
    :cond_46
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1c

    .line 860
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :sswitch_46
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_47

    .line 863
    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 869
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_48

    .line 870
    sget-object v9, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHealthAppConfiguration;

    .line 875
    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    :goto_1e
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getMainChannelFd(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHealthAppConfiguration;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 876
    .local v6, _result:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-eqz v6, :cond_49

    .line 878
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    invoke-virtual {v6, p3, v8}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 866
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Landroid/os/ParcelFileDescriptor;
    :cond_47
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1d

    .line 873
    :cond_48
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    goto :goto_1e

    .line 882
    .restart local v6       #_result:Landroid/os/ParcelFileDescriptor;
    :cond_49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 888
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:Landroid/bluetooth/BluetoothHealthAppConfiguration;
    .end local v6           #_result:Landroid/os/ParcelFileDescriptor;
    :sswitch_47
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectedHealthDevices()Ljava/util/List;

    move-result-object v7

    .line 890
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 896
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_48
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 899
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    .line 900
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 906
    .end local v1           #_arg0:[I
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_49
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4a

    .line 909
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 914
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_1f
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getHealthDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 915
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 912
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:I
    :cond_4a
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_1f

    .line 921
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_4a
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4b

    .line 924
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 930
    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 932
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 934
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 935
    .local v4, _arg3:I
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetooth$Stub;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 927
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :cond_4b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_20

    .line 941
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_4b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4d

    move v1, v8

    .line 944
    .local v1, _arg0:Z
    :goto_21
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setContentProtection(Z)Z

    move-result v6

    .line 945
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    if-eqz v6, :cond_4c

    move v0, v8

    :cond_4c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_4d
    move v1, v0

    .line 943
    goto :goto_21

    .line 951
    :sswitch_4c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 954
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScoPathChange(I)V

    .line 955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 960
    .end local v1           #_arg0:I
    :sswitch_4d
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 965
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemotePrimaryService(Ljava/lang/String;I)Z

    move-result v6

    .line 966
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    if-eqz v6, :cond_4e

    move v0, v8

    :cond_4e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 972
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_4e
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 975
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 976
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 982
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_4f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 985
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServicePaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 986
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 987
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 992
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_50
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 995
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 996
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1002
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_51
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1005
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteServiceCharPaths(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1006
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1007
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1012
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_52
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1015
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattDeviceConnect(Ljava/lang/String;)Z

    move-result v6

    .line 1016
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    if-eqz v6, :cond_4f

    move v0, v8

    :cond_4f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1022
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_53
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattDeviceDisconnect(Ljava/lang/String;)Z

    move-result v6

    .line 1026
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    if-eqz v6, :cond_50

    move v0, v8

    :cond_50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1032
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_54
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLEGattCallback;

    move-result-object v1

    .line 1035
    .local v1, _arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->registerGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1041
    .end local v1           #_arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    :sswitch_55
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothLEGattCallback;

    move-result-object v1

    .line 1044
    .restart local v1       #_arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->unregisterGattCallback(Landroid/bluetooth/IBluetoothLEGattCallback;)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1050
    .end local v1           #_arg0:Landroid/bluetooth/IBluetoothLEGattCallback;
    :sswitch_56
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1057
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->gattDiscoveryCharacteristics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1058
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    if-eqz v6, :cond_51

    move v0, v8

    :cond_51
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1064
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_57
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1068
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1069
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->gattGetCharProperties(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1070
    .local v6, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1076
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v6           #_result:[Ljava/lang/String;
    :sswitch_58
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1082
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1084
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    .line 1087
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->gattSetCharProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 1088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1093
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:[B
    :sswitch_59
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattDeviceDiscoverPrimary(Ljava/lang/String;)Z

    move-result v6

    .line 1097
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    if-eqz v6, :cond_52

    move v0, v8

    :cond_52
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1103
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5a
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1106
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattRegisterCharWatcher(Ljava/lang/String;)Z

    move-result v6

    .line 1107
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    if-eqz v6, :cond_53

    move v0, v8

    :cond_53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1113
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5b
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1116
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->gattUnregisterCharWatcher(Ljava/lang/String;)Z

    move-result v6

    .line 1117
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1118
    if-eqz v6, :cond_54

    move v0, v8

    :cond_54
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1123
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5c
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getAddressFromObjectPathForLE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1127
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1133
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_5d
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getGattConnectionState(Ljava/lang/String;)Z

    move-result v6

    .line 1137
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    if-eqz v6, :cond_55

    move v0, v8

    :cond_55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1143
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v6           #_result:Z
    :sswitch_5e
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_57

    move v1, v8

    .line 1146
    .local v1, _arg0:Z
    :goto_22
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setScanLE(Z)Z

    move-result v6

    .line 1147
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    if-eqz v6, :cond_56

    move v0, v8

    :cond_56
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v6           #_result:Z
    :cond_57
    move v1, v0

    .line 1145
    goto :goto_22

    .line 1153
    :sswitch_5f
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRssiValue(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1162
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_60
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_58

    .line 1165
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1170
    .local v1, _arg0:Landroid/bluetooth/BluetoothDevice;
    :goto_23
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteHDPDataTypeList(Landroid/bluetooth/BluetoothDevice;)[I

    move-result-object v6

    .line 1171
    .local v6, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 1168
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    .end local v6           #_result:[I
    :cond_58
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/bluetooth/BluetoothDevice;
    goto :goto_23

    .line 1177
    .end local v1           #_arg0:Landroid/bluetooth/BluetoothDevice;
    :sswitch_61
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setWbsParameters()Z

    move-result v6

    .line 1179
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    if-eqz v6, :cond_59

    move v0, v8

    :cond_59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1185
    .end local v6           #_result:Z
    :sswitch_62
    const-string v9, "android.bluetooth.IBluetooth"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p0}, Landroid/bluetooth/IBluetooth$Stub;->setNbParameters()Z

    move-result v6

    .line 1187
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    if-eqz v6, :cond_5a

    move v0, v8

    :cond_5a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

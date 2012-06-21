.class public abstract Lcom/samsung/wfd/IWfdManager$Stub;
.super Landroid/os/Binder;
.source "IWfdManager.java"

# interfaces
.implements Lcom/samsung/wfd/IWfdManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/IWfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/IWfdManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.wfd.IWfdManager"

.field static final TRANSACTION_WFDGetSubtitleStatus:I = 0xa

.field static final TRANSACTION_WFDGetSuspendStatus:I = 0xd

.field static final TRANSACTION_WFDPostSubtitle:I = 0xc

.field static final TRANSACTION_WFDSetSubtitleStatus:I = 0xb

.field static final TRANSACTION_getFrame:I = 0x10

.field static final TRANSACTION_getMessenger:I = 0x8

.field static final TRANSACTION_getWfdInfo:I = 0x6

.field static final TRANSACTION_getWfdSinkResolution:I = 0x9

.field static final TRANSACTION_getWfdState:I = 0x7

.field static final TRANSACTION_setWfdEnabled:I = 0x2

.field static final TRANSACTION_setWfdEnabledDialog:I = 0x1

.field static final TRANSACTION_setWfdRestart:I = 0x4

.field static final TRANSACTION_setWfdRestartOption:I = 0x5

.field static final TRANSACTION_setWfdTerminate:I = 0x3

.field static final TRANSACTION_startCapture:I = 0xe

.field static final TRANSACTION_stopCapture:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdManager;
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
    const-string v1, "com.samsung.wfd.IWfdManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/wfd/IWfdManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/samsung/wfd/IWfdManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/wfd/IWfdManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :sswitch_0
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 55
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdEnabledDialog(Z)Z

    move-result v2

    .line 56
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_1
    move v0, v4

    .line 54
    goto :goto_1

    .line 62
    :sswitch_2
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdEnabled(I)Z

    move-result v2

    .line 66
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_3
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdTerminate()Z

    move-result v2

    .line 74
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v2           #_result:Z
    :sswitch_4
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdRestart()Z

    move-result v2

    .line 82
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    if-eqz v2, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v2           #_result:Z
    :sswitch_5
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->setWfdRestartOption(I)Z

    move-result v2

    .line 92
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_5

    move v4, v3

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:I
    .end local v2           #_result:Z
    :sswitch_6
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;

    move-result-object v2

    .line 100
    .local v2, _result:Lcom/samsung/wfd/WfdInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v2, :cond_6

    .line 102
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v2, p3, v3}, Lcom/samsung/wfd/WfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 106
    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v2           #_result:Lcom/samsung/wfd/WfdInfo;
    :sswitch_7
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdState()I

    move-result v2

    .line 114
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v2           #_result:I
    :sswitch_8
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 122
    .local v2, _result:Landroid/os/Messenger;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v2, :cond_7

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {v2, p3, v3}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 128
    :cond_7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v2           #_result:Landroid/os/Messenger;
    :sswitch_9
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getWfdSinkResolution()I

    move-result v2

    .line 136
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v2           #_result:I
    :sswitch_a
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDGetSubtitleStatus()Z

    move-result v2

    .line 144
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v2, :cond_8

    move v4, v3

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 150
    .end local v2           #_result:Z
    :sswitch_b
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    move v0, v3

    .line 153
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDSetSubtitleStatus(Z)Z

    move-result v2

    .line 154
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v2, :cond_9

    move v4, v3

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_a
    move v0, v4

    .line 152
    goto :goto_2

    .line 160
    :sswitch_c
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDPostSubtitle(Ljava/lang/String;I)Z

    move-result v2

    .line 166
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v2, :cond_b

    move v4, v3

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_d
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->WFDGetSuspendStatus()Z

    move-result v2

    .line 174
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v2, :cond_c

    move v4, v3

    :cond_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 180
    .end local v2           #_result:Z
    :sswitch_e
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsung/wfd/IWfdManager$Stub;->startCapture(I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 189
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v4, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->stopCapture()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 196
    :sswitch_10
    const-string v5, "com.samsung.wfd.IWfdManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/wfd/IWfdManager$Stub;->getFrame()Lcom/samsung/ScreenCapture/CaptureImg;

    move-result-object v2

    .line 198
    .local v2, _result:Lcom/samsung/ScreenCapture/CaptureImg;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v2, :cond_d

    .line 200
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    invoke-virtual {v2, p3, v3}, Lcom/samsung/ScreenCapture/CaptureImg;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 204
    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

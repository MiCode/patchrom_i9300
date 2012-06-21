.class public abstract Landroid/sec/multiwindow/IMultiWindowService$Stub;
.super Landroid/os/Binder;
.source "IMultiWindowService.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/IMultiWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/IMultiWindowService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.sec.multiwindow.IMultiWindowService"

.field static final TRANSACTION_arrangeWindows:I = 0x2b

.field static final TRANSACTION_capture:I = 0x2c

.field static final TRANSACTION_changFocus:I = 0x38

.field static final TRANSACTION_destroyActivity:I = 0x3d

.field static final TRANSACTION_exchangeSplitScreens:I = 0x2e

.field static final TRANSACTION_finishActivity:I = 0x3b

.field static final TRANSACTION_finishAllWindow:I = 0x2a

.field static final TRANSACTION_finishAppPid:I = 0x3c

.field static final TRANSACTION_fitToHalf:I = 0xe

.field static final TRANSACTION_getHeight:I = 0x4

.field static final TRANSACTION_getMinimumSize:I = 0xb

.field static final TRANSACTION_getMultiLayout:I = 0x41

.field static final TRANSACTION_getMultiWindowList:I = 0x19

.field static final TRANSACTION_getMultiWindowListOwner:I = 0x20

.field static final TRANSACTION_getMultiWindowListOwnerList:I = 0x21

.field static final TRANSACTION_getMultiWindowType:I = 0x3f

.field static final TRANSACTION_getPinupWindow:I = 0x15

.field static final TRANSACTION_getPositionOfWindow:I = 0x37

.field static final TRANSACTION_getResumedWindow:I = 0x27

.field static final TRANSACTION_getRunningWindowList:I = 0x28

.field static final TRANSACTION_getVisibleWindowList:I = 0x29

.field static final TRANSACTION_getWidth:I = 0x3

.field static final TRANSACTION_getWindowOfPackageName:I = 0x43

.field static final TRANSACTION_initWindowClassInfo:I = 0x33

.field static final TRANSACTION_isDuplicated:I = 0x13

.field static final TRANSACTION_isMaximized:I = 0x8

.field static final TRANSACTION_isMultiWindow:I = 0x24

.field static final TRANSACTION_isMultiWindowOwner:I = 0x22

.field static final TRANSACTION_isMultiWindowServiceEnabled:I = 0x42

.field static final TRANSACTION_isPermissionOff:I = 0x2d

.field static final TRANSACTION_isRunning:I = 0x25

.field static final TRANSACTION_isSplitWindowFullSreen:I = 0x44

.field static final TRANSACTION_isVisible:I = 0x26

.field static final TRANSACTION_maximize:I = 0x5

.field static final TRANSACTION_minimize:I = 0x7

.field static final TRANSACTION_notifyFinished:I = 0x32

.field static final TRANSACTION_notifyForceFinished:I = 0x45

.field static final TRANSACTION_notifySIP:I = 0xf

.field static final TRANSACTION_notifyStarted:I = 0x31

.field static final TRANSACTION_orientationChangeRestore:I = 0xc

.field static final TRANSACTION_orientationChecked:I = 0xd

.field static final TRANSACTION_pauseChangeInformation:I = 0x3a

.field static final TRANSACTION_pinupWindow:I = 0x14

.field static final TRANSACTION_postResume:I = 0x39

.field static final TRANSACTION_regWindowClass:I = 0x35

.field static final TRANSACTION_regWindowClassAction:I = 0x36

.field static final TRANSACTION_registerMultiWindow:I = 0x16

.field static final TRANSACTION_registerMultiWindowOwner:I = 0x1a

.field static final TRANSACTION_registerMultiWindowOwnerWithMinList:I = 0x1d

.field static final TRANSACTION_registerMultiWindowWithMin:I = 0x1b

.field static final TRANSACTION_registerMultiWindowWithMinAndRatio:I = 0x1c

.field static final TRANSACTION_removeMultiWindow:I = 0x18

.field static final TRANSACTION_removeMultiWindowOwner:I = 0x1e

.field static final TRANSACTION_removeMultiWindowOwnerItem:I = 0x1f

.field static final TRANSACTION_restore:I = 0x6

.field static final TRANSACTION_resume:I = 0x23

.field static final TRANSACTION_screenShot:I = 0x47

.field static final TRANSACTION_setMinimumSize:I = 0xa

.field static final TRANSACTION_setMultiLayout:I = 0x40

.field static final TRANSACTION_setMultiWindowType:I = 0x3e

.field static final TRANSACTION_setPermissionOff:I = 0x46

.field static final TRANSACTION_setPositionWindow:I = 0x9

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startDualWindow:I = 0x10

.field static final TRANSACTION_startMultiWindow:I = 0x34

.field static final TRANSACTION_startSplitScreens:I = 0x2f

.field static final TRANSACTION_startSplitScreensForLauncher:I = 0x30

.field static final TRANSACTION_startSplitWindowWithDirection:I = 0x11

.field static final TRANSACTION_startSplitWindowWithDirectionReplaced:I = 0x12

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_unRegisterMultiWindow:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p0, p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.sec.multiwindow.IMultiWindowService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/sec/multiwindow/IMultiWindowService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/sec/multiwindow/IMultiWindowService;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/sec/multiwindow/IMultiWindowService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1

    .line 54
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 59
    .local v0, _arg0:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->start(Landroid/content/Intent;)Z

    move-result v5

    .line 60
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v5, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v5           #_result:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_1

    .line 66
    .end local v0           #_arg0:Landroid/content/Intent;
    :sswitch_2
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 69
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 75
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->stop(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 77
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v5, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .line 83
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 86
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 91
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getWidth(Landroid/content/ComponentName;)I

    move-result v5

    .line 92
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 98
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 101
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 106
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getHeight(Landroid/content/ComponentName;)I

    move-result v5

    .line 107
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 113
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7

    .line 116
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 121
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->maximize(Landroid/content/ComponentName;)Z

    move-result v5

    .line 122
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    if-eqz v5, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 119
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .line 128
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_6
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    .line 131
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 136
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->restore(Landroid/content/ComponentName;)Z

    move-result v5

    .line 137
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v5, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 134
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .line 143
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_7
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    .line 146
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 151
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->minimize(Landroid/content/ComponentName;)Z

    move-result v5

    .line 152
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v5, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 149
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 158
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    .line 161
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 166
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_8
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMaximized(Landroid/content/ComponentName;)Z

    move-result v5

    .line 167
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v5, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_8

    .line 173
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_e

    .line 176
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 182
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    .line 183
    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 188
    .local v1, _arg1:Landroid/graphics/Rect;
    :goto_a
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setPositionWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v5

    .line 189
    .local v5, _result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v5, :cond_10

    .line 191
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {v5, p3, v8}, Landroid/sec/multiwindow/MultiWindowObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 179
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .line 186
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Rect;
    goto :goto_a

    .line 195
    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_10
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :sswitch_a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    .line 204
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 210
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 212
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 213
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setMinimumSize(Landroid/content/ComponentName;II)Z

    move-result v5

    .line 214
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v5, :cond_11

    move v7, v8

    :cond_11
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 220
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    .line 223
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 228
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v5

    .line 229
    .local v5, _result:Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v5, :cond_14

    .line 231
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {v5, p3, v8}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 226
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/graphics/Rect;
    :cond_13
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_c

    .line 235
    .restart local v5       #_result:Landroid/graphics/Rect;
    :cond_14
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 241
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/graphics/Rect;
    :sswitch_c
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_16

    .line 244
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 250
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->orientationChangeRestore(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 252
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v5, :cond_15

    move v7, v8

    :cond_15
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 247
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .line 258
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->orientationChecked()Z

    move-result v5

    .line 260
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v5, :cond_17

    move v7, v8

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 266
    .end local v5           #_result:Z
    :sswitch_e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_19

    .line 269
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 275
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->fitToHalf(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 277
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v5, :cond_18

    move v7, v8

    :cond_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 272
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_19
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .line 283
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_f
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 286
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifySIP(I)Z

    move-result v5

    .line 287
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v5, :cond_1a

    move v7, v8

    :cond_1a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 293
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_10
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1c

    .line 296
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 302
    .local v0, _arg0:Landroid/content/Intent;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    .line 303
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 308
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startDualWindow(Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v5

    .line 309
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v5, :cond_1b

    move v7, v8

    :cond_1b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_f

    .line 306
    :cond_1d
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_10

    .line 315
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_11
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1f

    .line 318
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 324
    .restart local v0       #_arg0:Landroid/content/Intent;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 325
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitWindowWithDirection(Landroid/content/Intent;I)Z

    move-result v5

    .line 326
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v5, :cond_1e

    move v7, v8

    :cond_1e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 321
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_1f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_11

    .line 332
    .end local v0           #_arg0:Landroid/content/Intent;
    :sswitch_12
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_21

    .line 335
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 341
    .restart local v0       #_arg0:Landroid/content/Intent;
    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_22

    move v3, v8

    .line 344
    .local v3, _arg2:Z
    :goto_13
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitWindowWithDirectionReplaced(Landroid/content/Intent;IZ)Z

    move-result v5

    .line 345
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v5, :cond_20

    move v7, v8

    :cond_20
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 338
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v5           #_result:Z
    :cond_21
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_12

    .restart local v1       #_arg1:I
    :cond_22
    move v3, v7

    .line 343
    goto :goto_13

    .line 351
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:I
    :sswitch_13
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_24

    .line 354
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 359
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_14
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isDuplicated(Landroid/content/ComponentName;)Z

    move-result v5

    .line 360
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v5, :cond_23

    move v7, v8

    :cond_23
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_24
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_14

    .line 366
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_26

    .line 369
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 375
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_27

    move v1, v8

    .line 376
    .local v1, _arg1:Z
    :goto_16
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->pinupWindow(Landroid/content/ComponentName;Z)Z

    move-result v5

    .line 377
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    if-eqz v5, :cond_25

    move v7, v8

    :cond_25
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 372
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:Z
    :cond_26
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    :cond_27
    move v1, v7

    .line 375
    goto :goto_16

    .line 383
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_15
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getPinupWindow()Landroid/content/ComponentName;

    move-result-object v5

    .line 385
    .local v5, _result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v5, :cond_28

    .line 387
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {v5, p3, v8}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 391
    :cond_28
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 397
    .end local v5           #_result:Landroid/content/ComponentName;
    :sswitch_16
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2a

    .line 400
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 405
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .line 406
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v5, :cond_29

    move v7, v8

    :cond_29
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 403
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .line 412
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2c

    .line 415
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 420
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->unRegisterMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .line 421
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v5, :cond_2b

    move v7, v8

    :cond_2b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 418
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_2c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    .line 427
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2e

    .line 430
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 435
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_19
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->removeMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .line 436
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v5, :cond_2d

    move v7, v8

    :cond_2d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 433
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_2e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_19

    .line 442
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_19
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowList()Ljava/util/List;

    move-result-object v6

    .line 444
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 450
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_1a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_30

    .line 453
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 459
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_31

    .line 460
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 465
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v5

    .line 466
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    if-eqz v5, :cond_2f

    move v7, v8

    :cond_2f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 456
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_30
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .line 463
    :cond_31
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_1b

    .line 472
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_1b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_33

    .line 475
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 481
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 483
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 484
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowWithMin(Landroid/content/ComponentName;II)Z

    move-result v5

    .line 485
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    if-eqz v5, :cond_32

    move v7, v8

    :cond_32
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 478
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :cond_33
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1c

    .line 491
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1c
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_35

    .line 494
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 500
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 504
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_36

    move v4, v8

    .line 505
    .local v4, _arg3:Z
    :goto_1e
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowWithMinAndRatio(Landroid/content/ComponentName;IIZ)Z

    move-result v5

    .line 506
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    if-eqz v5, :cond_34

    move v7, v8

    :cond_34
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    .end local v5           #_result:Z
    :cond_35
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d

    .restart local v1       #_arg1:I
    .restart local v3       #_arg2:I
    :cond_36
    move v4, v7

    .line 504
    goto :goto_1e

    .line 512
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_1d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_38

    .line 515
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 521
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1f
    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 522
    .local v2, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p0, v0, v2}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->registerMultiWindowOwnerWithMinList(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v5

    .line 523
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    if-eqz v5, :cond_37

    move v7, v8

    :cond_37
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 518
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    .end local v5           #_result:Z
    :cond_38
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f

    .line 529
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3a

    .line 532
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 538
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3b

    .line 539
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 544
    .local v1, _arg1:Landroid/content/ComponentName;
    :goto_21
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->removeMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v5

    .line 545
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    if-eqz v5, :cond_39

    move v7, v8

    :cond_39
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 535
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_3a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_20

    .line 542
    :cond_3b
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_21

    .line 551
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_1f
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3d

    .line 554
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 559
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_22
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z

    move-result v5

    .line 560
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v5, :cond_3c

    move v7, v8

    :cond_3c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 557
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_3d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_22

    .line 566
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    .line 569
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 574
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowListOwner(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v6

    .line 575
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 572
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_3e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 581
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_21
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowListOwnerList()Ljava/util/List;

    move-result-object v6

    .line 583
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 589
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_22
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_40

    .line 592
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 598
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_41

    .line 599
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 604
    .restart local v1       #_arg1:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v5

    .line 605
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v5, :cond_3f

    move v7, v8

    :cond_3f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 595
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_40
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_24

    .line 602
    :cond_41
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/ComponentName;
    goto :goto_25

    .line 611
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/content/ComponentName;
    :sswitch_23
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_43

    .line 614
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 620
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/multiwindow/IMultiWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowListener;

    move-result-object v1

    .line 621
    .local v1, _arg1:Landroid/sec/multiwindow/IMultiWindowListener;
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z

    move-result v5

    .line 622
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    if-eqz v5, :cond_42

    move v7, v8

    :cond_42
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 617
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/sec/multiwindow/IMultiWindowListener;
    .end local v5           #_result:Z
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_26

    .line 628
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_24
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_45

    .line 631
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 636
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    .line 637
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    if-eqz v5, :cond_44

    move v7, v8

    :cond_44
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 634
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_45
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_27

    .line 643
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_25
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_47

    .line 646
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 651
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isRunning(Landroid/content/ComponentName;)Z

    move-result v5

    .line 652
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v5, :cond_46

    move v7, v8

    :cond_46
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 649
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_47
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .line 658
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_26
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_49

    .line 661
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 666
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_29
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isVisible(Landroid/content/ComponentName;)Z

    move-result v5

    .line 667
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    if-eqz v5, :cond_48

    move v7, v8

    :cond_48
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 664
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_49
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_29

    .line 673
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_27
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getResumedWindow()Landroid/content/ComponentName;

    move-result-object v5

    .line 675
    .local v5, _result:Landroid/content/ComponentName;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    if-eqz v5, :cond_4a

    .line 677
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    invoke-virtual {v5, p3, v8}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 681
    :cond_4a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 687
    .end local v5           #_result:Landroid/content/ComponentName;
    :sswitch_28
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getRunningWindowList()Ljava/util/List;

    move-result-object v6

    .line 689
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 695
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_29
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getVisibleWindowList()Ljava/util/List;

    move-result-object v6

    .line 697
    .restart local v6       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 703
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_2a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->finishAllWindow()Z

    move-result v5

    .line 705
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    if-eqz v5, :cond_4b

    move v7, v8

    :cond_4b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 711
    .end local v5           #_result:Z
    :sswitch_2b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 714
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->arrangeWindows(I)Z

    move-result v5

    .line 715
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    if-eqz v5, :cond_4c

    move v7, v8

    :cond_4c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 721
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_2c
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4d

    .line 724
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 730
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4e

    .line 731
    sget-object v9, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 736
    .local v1, _arg1:Landroid/graphics/Rect;
    :goto_2b
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 737
    .local v5, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    if-eqz v5, :cond_4f

    .line 739
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    invoke-virtual {v5, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 727
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :cond_4d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a

    .line 734
    :cond_4e
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Rect;
    goto :goto_2b

    .line 743
    .restart local v5       #_result:Landroid/graphics/Bitmap;
    :cond_4f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 749
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/graphics/Rect;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :sswitch_2d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isPermissionOff()Z

    move-result v5

    .line 751
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v5, :cond_50

    move v7, v8

    :cond_50
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 757
    .end local v5           #_result:Z
    :sswitch_2e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->exchangeSplitScreens()Z

    move-result v5

    .line 759
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    if-eqz v5, :cond_51

    move v7, v8

    :cond_51
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 765
    .end local v5           #_result:Z
    :sswitch_2f
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_53

    .line 768
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 774
    .local v0, _arg0:Landroid/content/Intent;
    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_54

    .line 775
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 780
    .local v1, _arg1:Landroid/content/Intent;
    :goto_2d
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    .line 781
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    if-eqz v5, :cond_52

    move v7, v8

    :cond_52
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 771
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    .end local v5           #_result:Z
    :cond_53
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_2c

    .line 778
    :cond_54
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/Intent;
    goto :goto_2d

    .line 787
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    :sswitch_30
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_56

    .line 790
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 796
    .restart local v0       #_arg0:Landroid/content/Intent;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_57

    .line 797
    sget-object v9, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 802
    .restart local v1       #_arg1:Landroid/content/Intent;
    :goto_2f
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v5

    .line 803
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v5, :cond_55

    move v7, v8

    :cond_55
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 793
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    .end local v5           #_result:Z
    :cond_56
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/Intent;
    goto :goto_2e

    .line 800
    :cond_57
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/content/Intent;
    goto :goto_2f

    .line 809
    .end local v0           #_arg0:Landroid/content/Intent;
    .end local v1           #_arg1:Landroid/content/Intent;
    :sswitch_31
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_59

    .line 812
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 818
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 819
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifyStarted(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 820
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    if-eqz v5, :cond_58

    move v7, v8

    :cond_58
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 815
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_59
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_30

    .line 826
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_32
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5b

    .line 829
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 835
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 836
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifyFinished(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 837
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    if-eqz v5, :cond_5a

    move v7, v8

    :cond_5a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 832
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_5b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_31

    .line 843
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5c

    .line 846
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 852
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 853
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 849
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_5c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_32

    .line 859
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_34
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5e

    .line 862
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 868
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5f

    move v1, v8

    .line 869
    .local v1, _arg1:Z
    :goto_34
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->startMultiWindow(Landroid/content/ComponentName;Z)Z

    move-result v5

    .line 870
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v5, :cond_5d

    move v7, v8

    :cond_5d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 865
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:Z
    :cond_5e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_33

    :cond_5f
    move v1, v7

    .line 868
    goto :goto_34

    .line 876
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_61

    .line 879
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 884
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_35
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->regWindowClass(Landroid/content/ComponentName;)Z

    move-result v5

    .line 885
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    if-eqz v5, :cond_60

    move v7, v8

    :cond_60
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 882
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_61
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_35

    .line 891
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_63

    .line 894
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 900
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/sec/multiwindow/IMultiWindowAction$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v1

    .line 902
    .local v1, _arg1:Landroid/sec/multiwindow/IMultiWindowAction;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 903
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v1, v3}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v5

    .line 904
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    if-eqz v5, :cond_62

    move v7, v8

    :cond_62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 897
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/sec/multiwindow/IMultiWindowAction;
    .end local v3           #_arg2:I
    .end local v5           #_result:Z
    :cond_63
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_36

    .line 910
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_37
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_64

    .line 913
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 918
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_37
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v5

    .line 919
    .local v5, _result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    if-eqz v5, :cond_65

    .line 921
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    invoke-virtual {v5, p3, v8}, Landroid/sec/multiwindow/MultiWindowObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 916
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_64
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_37

    .line 925
    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_65
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 931
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :sswitch_38
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_66

    .line 934
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 939
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_38
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->changFocus(Landroid/content/ComponentName;)V

    .line 940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 937
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_66
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_38

    .line 945
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_39
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_68

    .line 948
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 954
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 955
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->postResume(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 956
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    if-eqz v5, :cond_67

    move v7, v8

    :cond_67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 951
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_68
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_39

    .line 962
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3a
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6a

    .line 965
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 970
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3a
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->pauseChangeInformation(Landroid/content/ComponentName;)Z

    move-result v5

    .line 971
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    if-eqz v5, :cond_69

    move v7, v8

    :cond_69
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 968
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_6a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3a

    .line 977
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6c

    .line 980
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 986
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 987
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->finishActivity(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 988
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    if-eqz v5, :cond_6b

    move v7, v8

    :cond_6b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 983
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_6c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3b

    .line 994
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3c
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 997
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->finishAppPid(I)Z

    move-result v5

    .line 998
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    if-eqz v5, :cond_6d

    move v7, v8

    :cond_6d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1004
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_3d
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6f

    .line 1007
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1013
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1014
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->destroyActivity(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 1015
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    if-eqz v5, :cond_6e

    move v7, v8

    :cond_6e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1010
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_6f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3c

    .line 1021
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3e
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1024
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setMultiWindowType(I)Z

    move-result v5

    .line 1025
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    if-eqz v5, :cond_70

    move v7, v8

    :cond_70
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1031
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_3f
    const-string v7, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiWindowType()I

    move-result v5

    .line 1033
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1039
    .end local v5           #_result:I
    :sswitch_40
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_72

    move v0, v8

    .line 1042
    .local v0, _arg0:Z
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setMultiLayout(Z)Z

    move-result v5

    .line 1043
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    if-eqz v5, :cond_71

    move v7, v8

    :cond_71
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v5           #_result:Z
    :cond_72
    move v0, v7

    .line 1041
    goto :goto_3d

    .line 1049
    :sswitch_41
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getMultiLayout()Z

    move-result v5

    .line 1051
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    if-eqz v5, :cond_73

    move v7, v8

    :cond_73
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1057
    .end local v5           #_result:Z
    :sswitch_42
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isMultiWindowServiceEnabled()Z

    move-result v5

    .line 1059
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    if-eqz v5, :cond_74

    move v7, v8

    :cond_74
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1065
    .end local v5           #_result:Z
    :sswitch_43
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_75

    .line 1068
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1073
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->getWindowOfPackageName(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v5

    .line 1074
    .local v5, _result:Landroid/sec/multiwindow/MultiWindowObject;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    if-eqz v5, :cond_76

    .line 1076
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    invoke-virtual {v5, p3, v8}, Landroid/sec/multiwindow/MultiWindowObject;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1071
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_75
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3e

    .line 1080
    .restart local v5       #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_76
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1086
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/sec/multiwindow/MultiWindowObject;
    :sswitch_44
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->isSplitWindowFullSreen()Z

    move-result v5

    .line 1088
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    if-eqz v5, :cond_77

    move v7, v8

    :cond_77
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1094
    .end local v5           #_result:Z
    :sswitch_45
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_79

    .line 1097
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1102
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->notifyForceFinished(Landroid/content/ComponentName;)Z

    move-result v5

    .line 1103
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    if-eqz v5, :cond_78

    move v7, v8

    :cond_78
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1100
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_79
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .line 1109
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_46
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7a

    move v0, v8

    .line 1112
    .local v0, _arg0:Z
    :goto_40
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->setPermissionOff(Z)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7a
    move v0, v7

    .line 1111
    goto :goto_40

    .line 1118
    :sswitch_47
    const-string v9, "android.sec.multiwindow.IMultiWindowService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_7b

    .line 1121
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1126
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_41
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1127
    .local v5, _result:Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    if-eqz v5, :cond_7c

    .line 1129
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    invoke-virtual {v5, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 1124
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Landroid/graphics/Bitmap;
    :cond_7b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_41

    .line 1133
    .restart local v5       #_result:Landroid/graphics/Bitmap;
    :cond_7c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

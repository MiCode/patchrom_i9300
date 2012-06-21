.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 1600
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 72
    if-nez p0, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 77
    .local v0, in:Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0           #in:Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .parameter "intent"
    .parameter "permission"

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 98
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 117
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1597
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 174
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
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 1593
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 131
    :pswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 133
    .local v95, b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 134
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 135
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 136
    .local v8, resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 137
    .local v9, grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 138
    .local v10, grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 139
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 141
    .local v13, requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v14, 0x1

    .line 142
    .local v14, onlyIfNeeded:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v15, 0x1

    .line 143
    .local v15, debug:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 144
    .local v16, profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 146
    .local v17, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v18, 0x1

    .local v18, autoStopProfiler:Z
    :goto_4
    move-object/from16 v5, p0

    .line 147
    invoke-virtual/range {v5 .. v18}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I

    move-result v156

    .line 150
    .local v156, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    const/4 v5, 0x1

    goto :goto_0

    .line 141
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v18           #autoStopProfiler:Z
    .end local v156           #result:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 142
    .restart local v14       #onlyIfNeeded:Z
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 144
    .restart local v15       #debug:Z
    .restart local v16       #profileFile:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    goto :goto_3

    .line 146
    .restart local v17       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v18, 0x0

    goto :goto_4

    .line 157
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 159
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 160
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 161
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 162
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 163
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 164
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 165
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 166
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 167
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v14, 0x1

    .line 168
    .restart local v14       #onlyIfNeeded:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v15, 0x1

    .line 169
    .restart local v15       #debug:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 170
    .restart local v16       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 172
    .restart local v17       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v18, 0x1

    .restart local v18       #autoStopProfiler:Z
    :goto_8
    move-object/from16 v5, p0

    .line 173
    invoke-virtual/range {v5 .. v18}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Landroid/app/IActivityManager$WaitResult;

    move-result-object v156

    .line 176
    .local v156, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    const/4 v5, 0x0

    move-object/from16 v0, v156

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 167
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v18           #autoStopProfiler:Z
    .end local v156           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    .line 168
    .restart local v14       #onlyIfNeeded:Z
    :cond_5
    const/4 v15, 0x0

    goto :goto_6

    .line 170
    .restart local v15       #debug:Z
    .restart local v16       #profileFile:Ljava/lang/String;
    :cond_6
    const/16 v17, 0x0

    goto :goto_7

    .line 172
    .restart local v17       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/16 v18, 0x0

    goto :goto_8

    .line 183
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v17           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 185
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 186
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 187
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 188
    .restart local v8       #resolvedType:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/net/Uri;

    .line 189
    .restart local v9       #grantedUriPermissions:[Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 190
    .restart local v10       #grantedMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 191
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 192
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 193
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v14, 0x1

    .line 194
    .restart local v14       #onlyIfNeeded:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v15, 0x1

    .line 195
    .restart local v15       #debug:Z
    :goto_a
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .local v30, config:Landroid/content/res/Configuration;
    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v29, v15

    .line 196
    invoke-virtual/range {v19 .. v30}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I

    move-result v156

    .line 199
    .local v156, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 193
    .end local v14           #onlyIfNeeded:Z
    .end local v15           #debug:Z
    .end local v30           #config:Landroid/content/res/Configuration;
    .end local v156           #result:I
    :cond_8
    const/4 v14, 0x0

    goto :goto_9

    .line 194
    .restart local v14       #onlyIfNeeded:Z
    :cond_9
    const/4 v15, 0x0

    goto :goto_a

    .line 206
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v9           #grantedUriPermissions:[Landroid/net/Uri;
    .end local v10           #grantedMode:I
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v14           #onlyIfNeeded:Z
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 208
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 209
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 210
    .local v7, intent:Landroid/content/IntentSender;
    const/16 v22, 0x0

    .line 211
    .local v22, fillInIntent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 212
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #fillInIntent:Landroid/content/Intent;
    check-cast v22, Landroid/content/Intent;

    .line 214
    .restart local v22       #fillInIntent:Landroid/content/Intent;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 215
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 216
    .restart local v11       #resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 217
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 218
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 219
    .local v27, flagsMask:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .local v28, flagsValues:I
    move-object/from16 v19, p0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move/from16 v26, v13

    .line 220
    invoke-virtual/range {v19 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I

    move-result v156

    .line 223
    .restart local v156       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 230
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/IntentSender;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v22           #fillInIntent:Landroid/content/Intent;
    .end local v27           #flagsMask:I
    .end local v28           #flagsValues:I
    .end local v95           #b:Landroid/os/IBinder;
    .end local v156           #result:I
    :pswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v99

    .line 232
    .local v99, callingActivity:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 233
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    invoke-virtual {v0, v1, v7}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z

    move-result v156

    .line 234
    .local v156, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v156, :cond_b

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 235
    :cond_b
    const/4 v5, 0x0

    goto :goto_b

    .line 240
    .end local v7           #intent:Landroid/content/Intent;
    .end local v99           #callingActivity:Landroid/os/IBinder;
    .end local v156           #result:Z
    :pswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 242
    .local v50, token:Landroid/os/IBinder;
    const/16 v43, 0x0

    .line 243
    .local v43, resultData:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 244
    .local v42, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 245
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    .end local v43           #resultData:Landroid/content/Intent;
    check-cast v43, Landroid/content/Intent;

    .line 247
    .restart local v43       #resultData:Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v42

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v154

    .line 248
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v154, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 249
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 254
    .end local v42           #resultCode:I
    .end local v43           #resultData:Landroid/content/Intent;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 256
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 257
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 258
    .restart local v13       #requestCode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 264
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 266
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v154

    .line 267
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v154, :cond_e

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 268
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 274
    .end local v50           #token:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 276
    .restart local v95       #b:Landroid/os/IBinder;
    if-eqz v95, :cond_f

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 278
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 279
    .local v33, packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 280
    if-eqz v95, :cond_10

    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v34

    .line 282
    .local v34, rec:Landroid/content/IIntentReceiver;
    :goto_f
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/IntentFilter;

    .line 283
    .local v35, filter:Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .local v36, perm:Ljava/lang/String;
    move-object/from16 v31, p0

    move-object/from16 v32, v6

    .line 284
    invoke-virtual/range {v31 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 285
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    if-eqz v7, :cond_11

    .line 287
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 292
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 276
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v33           #packageName:Ljava/lang/String;
    .end local v34           #rec:Landroid/content/IIntentReceiver;
    .end local v35           #filter:Landroid/content/IntentFilter;
    .end local v36           #perm:Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 280
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v33       #packageName:Ljava/lang/String;
    :cond_10
    const/16 v34, 0x0

    goto :goto_f

    .line 290
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v34       #rec:Landroid/content/IIntentReceiver;
    .restart local v35       #filter:Landroid/content/IntentFilter;
    .restart local v36       #perm:Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 297
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v33           #packageName:Ljava/lang/String;
    .end local v34           #rec:Landroid/content/IIntentReceiver;
    .end local v35           #filter:Landroid/content/IntentFilter;
    .end local v36           #perm:Ljava/lang/String;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 299
    .restart local v95       #b:Landroid/os/IBinder;
    if-nez v95, :cond_12

    .line 300
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 302
    :cond_12
    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v34

    .line 303
    .restart local v34       #rec:Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 304
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 310
    .end local v34           #rec:Landroid/content/IIntentReceiver;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 312
    .restart local v95       #b:Landroid/os/IBinder;
    if-eqz v95, :cond_13

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 314
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 315
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 316
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 317
    if-eqz v95, :cond_14

    invoke-static/range {v95 .. v95}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 319
    .local v11, resultTo:Landroid/content/IIntentReceiver;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 320
    .restart local v42       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 321
    .local v43, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 322
    .local v44, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 323
    .restart local v36       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v46, 0x1

    .line 324
    .local v46, serialized:Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v47, 0x1

    .local v47, sticky:Z
    :goto_14
    move-object/from16 v37, p0

    move-object/from16 v38, v6

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v11

    move-object/from16 v45, v36

    .line 325
    invoke-virtual/range {v37 .. v47}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I

    move-result v154

    .line 328
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 312
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v36           #perm:Ljava/lang/String;
    .end local v42           #resultCode:I
    .end local v43           #resultData:Ljava/lang/String;
    .end local v44           #resultExtras:Landroid/os/Bundle;
    .end local v46           #serialized:Z
    .end local v47           #sticky:Z
    .end local v154           #res:I
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 317
    .restart local v6       #app:Landroid/app/IApplicationThread;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #resolvedType:Ljava/lang/String;
    :cond_14
    const/4 v11, 0x0

    goto :goto_12

    .line 323
    .restart local v11       #resultTo:Landroid/content/IIntentReceiver;
    .restart local v36       #perm:Ljava/lang/String;
    .restart local v42       #resultCode:I
    .restart local v43       #resultData:Ljava/lang/String;
    .restart local v44       #resultExtras:Landroid/os/Bundle;
    :cond_15
    const/16 v46, 0x0

    goto :goto_13

    .line 324
    .restart local v46       #serialized:Z
    :cond_16
    const/16 v47, 0x0

    goto :goto_14

    .line 335
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/content/IIntentReceiver;
    .end local v36           #perm:Ljava/lang/String;
    .end local v42           #resultCode:I
    .end local v43           #resultData:Ljava/lang/String;
    .end local v44           #resultExtras:Landroid/os/Bundle;
    .end local v46           #serialized:Z
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 337
    .restart local v95       #b:Landroid/os/IBinder;
    if-eqz v95, :cond_17

    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 338
    .restart local v6       #app:Landroid/app/IApplicationThread;
    :goto_15
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 339
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 337
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_17
    const/4 v6, 0x0

    goto :goto_15

    .line 345
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v41

    .line 347
    .local v41, who:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 348
    .restart local v42       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 349
    .restart local v43       #resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 350
    .restart local v44       #resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v45, 0x1

    .line 351
    .local v45, resultAbort:Z
    :goto_16
    if-eqz v41, :cond_18

    move-object/from16 v40, p0

    .line 352
    invoke-virtual/range {v40 .. v45}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 354
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 350
    .end local v45           #resultAbort:Z
    :cond_19
    const/16 v45, 0x0

    goto :goto_16

    .line 359
    .end local v41           #who:Landroid/os/IBinder;
    .end local v42           #resultCode:I
    .end local v43           #resultData:Ljava/lang/String;
    .end local v44           #resultExtras:Landroid/os/Bundle;
    :pswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 362
    .restart local v6       #app:Landroid/app/IApplicationThread;
    if-eqz v6, :cond_1a

    .line 363
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 365
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 370
    .end local v6           #app:Landroid/app/IApplicationThread;
    :pswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 372
    .restart local v50       #token:Landroid/os/IBinder;
    const/16 v30, 0x0

    .line 373
    .restart local v30       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 374
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #config:Landroid/content/res/Configuration;
    check-cast v30, Landroid/content/res/Configuration;

    .line 376
    .restart local v30       #config:Landroid/content/res/Configuration;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v161, 0x1

    .line 377
    .local v161, stopProfiling:Z
    :goto_17
    if-eqz v50, :cond_1c

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v30

    move/from16 v3, v161

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 380
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 376
    .end local v161           #stopProfiling:Z
    :cond_1d
    const/16 v161, 0x0

    goto :goto_17

    .line 385
    .end local v30           #config:Landroid/content/res/Configuration;
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 387
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 393
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 395
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v127

    .line 396
    .local v127, map:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v167, v5

    .line 398
    .local v167, thumbnail:Landroid/graphics/Bitmap;
    :goto_18
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Ljava/lang/CharSequence;

    .line 399
    .local v106, description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v127

    move-object/from16 v3, v167

    move-object/from16 v4, v106

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 396
    .end local v106           #description:Ljava/lang/CharSequence;
    .end local v167           #thumbnail:Landroid/graphics/Bitmap;
    :cond_1e
    const/16 v167, 0x0

    goto :goto_18

    .line 405
    .end local v50           #token:Landroid/os/IBinder;
    .end local v127           #map:Landroid/os/Bundle;
    :pswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 407
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 408
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 413
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 415
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 421
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 423
    .restart local v50       #token:Landroid/os/IBinder;
    if-eqz v50, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v154

    .line 424
    .local v154, res:Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 423
    .end local v154           #res:Ljava/lang/String;
    :cond_1f
    const/16 v154, 0x0

    goto :goto_19

    .line 430
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 432
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v103

    .line 433
    .local v103, cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 435
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 439
    .end local v50           #token:Landroid/os/IBinder;
    .end local v103           #cn:Landroid/content/ComponentName;
    :pswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 441
    .local v129, maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 442
    .local v60, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v151

    .line 443
    .local v151, receiverBinder:Landroid/os/IBinder;
    if-eqz v151, :cond_20

    invoke-static/range {v151 .. v151}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v150

    .line 446
    .local v150, receiver:Landroid/app/IThumbnailReceiver;
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    move-object/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v121

    .line 447
    .local v121, list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    if-eqz v121, :cond_21

    invoke-interface/range {v121 .. v121}, Ljava/util/List;->size()I

    move-result v89

    .line 449
    .local v89, N:I
    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    const/16 v111, 0x0

    .local v111, i:I
    :goto_1c
    move/from16 v0, v111

    move/from16 v1, v89

    if-ge v0, v1, :cond_22

    .line 452
    move-object/from16 v0, v121

    move/from16 v1, v111

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 454
    .local v114, info:Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 451
    add-int/lit8 v111, v111, 0x1

    goto :goto_1c

    .line 443
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v114           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v121           #list:Ljava/util/List;
    .end local v150           #receiver:Landroid/app/IThumbnailReceiver;
    :cond_20
    const/16 v150, 0x0

    goto :goto_1a

    .line 448
    .restart local v121       #list:Ljava/util/List;
    .restart local v150       #receiver:Landroid/app/IThumbnailReceiver;
    :cond_21
    const/16 v89, -0x1

    goto :goto_1b

    .line 456
    .restart local v89       #N:I
    .restart local v111       #i:I
    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 460
    .end local v60           #fl:I
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v121           #list:Ljava/util/List;
    .end local v129           #maxNum:I
    .end local v150           #receiver:Landroid/app/IThumbnailReceiver;
    .end local v151           #receiverBinder:Landroid/os/IBinder;
    :pswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 462
    .restart local v129       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 463
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getRecentTasks(II)Ljava/util/List;

    move-result-object v123

    .line 465
    .local v123, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    move-object/from16 v0, p3

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 467
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 471
    .end local v60           #fl:I
    .end local v123           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v129           #maxNum:I
    :pswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 473
    .local v51, id:I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v98

    .line 474
    .local v98, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v98, :cond_23

    .line 476
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v5, 0x0

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 481
    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 479
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 485
    .end local v51           #id:I
    .end local v98           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :pswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v129

    .line 487
    .restart local v129       #maxNum:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 488
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v129

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v121

    .line 489
    .restart local v121       #list:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    if-eqz v121, :cond_24

    invoke-interface/range {v121 .. v121}, Ljava/util/List;->size()I

    move-result v89

    .line 491
    .restart local v89       #N:I
    :goto_1e
    move-object/from16 v0, p3

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    const/16 v111, 0x0

    .restart local v111       #i:I
    :goto_1f
    move/from16 v0, v111

    move/from16 v1, v89

    if-ge v0, v1, :cond_25

    .line 494
    move-object/from16 v0, v121

    move/from16 v1, v111

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 496
    .local v114, info:Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 493
    add-int/lit8 v111, v111, 0x1

    goto :goto_1f

    .line 490
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v114           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_24
    const/16 v89, -0x1

    goto :goto_1e

    .line 498
    .restart local v89       #N:I
    .restart local v111       #i:I
    :cond_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 502
    .end local v60           #fl:I
    .end local v89           #N:I
    .end local v111           #i:I
    .end local v121           #list:Ljava/util/List;
    .end local v129           #maxNum:I
    :pswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v122

    .line 504
    .local v122, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 506
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 510
    .end local v122           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v124

    .line 512
    .local v124, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    move-object/from16 v0, p3

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 514
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 518
    .end local v124           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v125

    .line 520
    .local v125, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    move-object/from16 v0, p3

    move-object/from16 v1, v125

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 522
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 526
    .end local v125           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 528
    .local v165, task:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 529
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v165

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTaskToFront(II)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 535
    .end local v60           #fl:I
    .end local v165           #task:I
    :pswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 537
    .restart local v165       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 543
    .end local v165           #task:I
    :pswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 545
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/16 v135, 0x1

    .line 546
    .local v135, nonRoot:Z
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v135

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v154

    .line 547
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    if-eqz v154, :cond_27

    const/4 v5, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 545
    .end local v135           #nonRoot:Z
    .end local v154           #res:Z
    :cond_26
    const/16 v135, 0x0

    goto :goto_20

    .line 548
    .restart local v135       #nonRoot:Z
    .restart local v154       #res:Z
    :cond_27
    const/4 v5, 0x0

    goto :goto_21

    .line 553
    .end local v50           #token:Landroid/os/IBinder;
    .end local v135           #nonRoot:Z
    .end local v154           #res:Z
    :pswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v165

    .line 555
    .restart local v165       #task:I
    move-object/from16 v0, p0

    move/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 561
    .end local v165           #task:I
    :pswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 563
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v137, 0x1

    .line 564
    .local v137, onlyRoot:Z
    :goto_22
    if-eqz v50, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v137

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v154

    .line 566
    .local v154, res:I
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 563
    .end local v137           #onlyRoot:Z
    .end local v154           #res:I
    :cond_28
    const/16 v137, 0x0

    goto :goto_22

    .line 564
    .restart local v137       #onlyRoot:Z
    :cond_29
    const/16 v154, -0x1

    goto :goto_23

    .line 572
    .end local v50           #token:Landroid/os/IBinder;
    .end local v137           #onlyRoot:Z
    :pswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 574
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 575
    .local v49, className:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 581
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 583
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v167, v5

    .line 585
    .restart local v167       #thumbnail:Landroid/graphics/Bitmap;
    :goto_24
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Ljava/lang/CharSequence;

    .line 586
    .restart local v106       #description:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v167

    move-object/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 583
    .end local v106           #description:Ljava/lang/CharSequence;
    .end local v167           #thumbnail:Landroid/graphics/Bitmap;
    :cond_2a
    const/16 v167, 0x0

    goto :goto_24

    .line 592
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 594
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 595
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 596
    .local v134, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v105

    .line 597
    .local v105, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    if-eqz v105, :cond_2b

    .line 599
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    const/4 v5, 0x0

    move-object/from16 v0, v105

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 604
    :goto_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 602
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 608
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v105           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v134           #name:Ljava/lang/String;
    :pswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 610
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 611
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v146

    .line 613
    .local v146, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v146

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 619
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v146           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 621
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 622
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 623
    .restart local v134       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 629
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v134           #name:Ljava/lang/String;
    :pswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/content/ComponentName;

    .line 631
    .local v104, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v140

    .line 632
    .local v140, pi:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    move-object/from16 v0, v140

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 634
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 638
    .end local v104           #comp:Landroid/content/ComponentName;
    .end local v140           #pi:Landroid/app/PendingIntent;
    :pswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 640
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 641
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 642
    .local v57, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 643
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v103

    .line 644
    .restart local v103       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 646
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 650
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v57           #service:Landroid/content/Intent;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v103           #cn:Landroid/content/ComponentName;
    :pswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 652
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 653
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 654
    .restart local v57       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 655
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v6, v1, v8}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v154

    .line 656
    .restart local v154       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 662
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v57           #service:Landroid/content/Intent;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:I
    :pswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 664
    .restart local v49       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 665
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 666
    .local v160, startId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    move/from16 v3, v160

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v154

    .line 667
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    if-eqz v154, :cond_2c

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 668
    :cond_2c
    const/4 v5, 0x0

    goto :goto_26

    .line 673
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v154           #res:Z
    .end local v160           #startId:I
    :pswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 675
    .restart local v49       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 676
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 677
    .restart local v51       #id:I
    const/16 v52, 0x0

    .line 678
    .local v52, notification:Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2d

    .line 679
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52           #notification:Landroid/app/Notification;
    check-cast v52, Landroid/app/Notification;

    .line 681
    .restart local v52       #notification:Landroid/app/Notification;
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v53, 0x1

    .local v53, removeNotification:Z
    :goto_27
    move-object/from16 v48, p0

    .line 682
    invoke-virtual/range {v48 .. v53}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 681
    .end local v53           #removeNotification:Z
    :cond_2e
    const/16 v53, 0x0

    goto :goto_27

    .line 688
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v51           #id:I
    .end local v52           #notification:Landroid/app/Notification;
    :pswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 690
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 691
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 692
    .restart local v50       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 693
    .restart local v57       #service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 694
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 696
    .restart local v60       #fl:I
    invoke-static/range {v95 .. v95}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v59

    .local v59, conn:Landroid/app/IServiceConnection;
    move-object/from16 v54, p0

    move-object/from16 v55, v6

    move-object/from16 v56, v50

    move-object/from16 v58, v8

    .line 697
    invoke-virtual/range {v54 .. v60}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I

    move-result v154

    .line 698
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 704
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v57           #service:Landroid/content/Intent;
    .end local v59           #conn:Landroid/app/IServiceConnection;
    .end local v60           #fl:I
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:I
    :pswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 706
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v59

    .line 707
    .restart local v59       #conn:Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v154

    .line 708
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    if-eqz v154, :cond_2f

    const/4 v5, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 709
    :cond_2f
    const/4 v5, 0x0

    goto :goto_28

    .line 714
    .end local v59           #conn:Landroid/app/IServiceConnection;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 716
    .restart local v50       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 717
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v57

    .line 718
    .local v57, service:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 724
    .end local v7           #intent:Landroid/content/Intent;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v57           #service:Landroid/os/IBinder;
    :pswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 726
    .restart local v50       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 727
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30

    const/16 v107, 0x1

    .line 728
    .local v107, doRebind:Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v107

    invoke-virtual {v0, v1, v7, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 727
    .end local v107           #doRebind:Z
    :cond_30
    const/16 v107, 0x0

    goto :goto_29

    .line 734
    .end local v7           #intent:Landroid/content/Intent;
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 736
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v68

    .line 737
    .local v68, type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 738
    .restart local v160       #startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 739
    .local v154, res:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v68

    move/from16 v3, v160

    move/from16 v4, v154

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 745
    .end local v50           #token:Landroid/os/IBinder;
    .end local v68           #type:I
    .end local v154           #res:I
    .end local v160           #startId:I
    :pswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v49

    .line 747
    .restart local v49       #className:Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 748
    .restart local v16       #profileFile:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 749
    .restart local v60       #fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v65

    .line 750
    .local v65, arguments:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 751
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v66

    .local v66, w:Landroid/app/IInstrumentationWatcher;
    move-object/from16 v61, p0

    move-object/from16 v62, v49

    move-object/from16 v63, v16

    move/from16 v64, v60

    .line 752
    invoke-virtual/range {v61 .. v66}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z

    move-result v154

    .line 753
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    if-eqz v154, :cond_31

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 755
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 754
    :cond_31
    const/4 v5, 0x0

    goto :goto_2a

    .line 760
    .end local v16           #profileFile:Ljava/lang/String;
    .end local v49           #className:Landroid/content/ComponentName;
    .end local v60           #fl:I
    .end local v65           #arguments:Landroid/os/Bundle;
    .end local v66           #w:Landroid/app/IInstrumentationWatcher;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v154           #res:Z
    :pswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 762
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 763
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 764
    .restart local v42       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v157

    .line 765
    .local v157, results:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v157

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 766
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 771
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v42           #resultCode:I
    .end local v95           #b:Landroid/os/IBinder;
    .end local v157           #results:Landroid/os/Bundle;
    :pswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v30

    .line 773
    .restart local v30       #config:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 775
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 779
    .end local v30           #config:Landroid/content/res/Configuration;
    :pswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .line 781
    .restart local v30       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 787
    .end local v30           #config:Landroid/content/res/Configuration;
    :pswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 789
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v153

    .line 790
    .local v153, requestedOrientation:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v153

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 796
    .end local v50           #token:Landroid/os/IBinder;
    .end local v153           #requestedOrientation:I
    :pswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 798
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v152

    .line 799
    .local v152, req:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move-object/from16 v0, p3

    move/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 805
    .end local v50           #token:Landroid/os/IBinder;
    .end local v152           #req:I
    :pswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 807
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v103

    .line 808
    .restart local v103       #cn:Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    move-object/from16 v0, v103

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 810
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 814
    .end local v50           #token:Landroid/os/IBinder;
    .end local v103           #cn:Landroid/content/ComponentName;
    :pswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 816
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 818
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 822
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v68

    .line 824
    .restart local v68       #type:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 825
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 826
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 827
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 830
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_32

    .line 831
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v73

    check-cast v73, [Landroid/content/Intent;

    .line 832
    .local v73, requestIntents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v74

    .line 837
    .local v74, requestResolvedTypes:[Ljava/lang/String;
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .restart local v60       #fl:I
    move-object/from16 v67, p0

    move-object/from16 v69, v33

    move-object/from16 v70, v50

    move-object/from16 v71, v12

    move/from16 v72, v13

    move/from16 v75, v60

    .line 838
    invoke-virtual/range {v67 .. v75}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v154

    .line 841
    .local v154, res:Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    if-eqz v154, :cond_33

    invoke-interface/range {v154 .. v154}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 843
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 834
    .end local v60           #fl:I
    .end local v73           #requestIntents:[Landroid/content/Intent;
    .end local v74           #requestResolvedTypes:[Ljava/lang/String;
    .end local v154           #res:Landroid/content/IIntentSender;
    :cond_32
    const/16 v73, 0x0

    .line 835
    .restart local v73       #requestIntents:[Landroid/content/Intent;
    const/16 v74, 0x0

    .restart local v74       #requestResolvedTypes:[Ljava/lang/String;
    goto :goto_2b

    .line 842
    .restart local v60       #fl:I
    .restart local v154       #res:Landroid/content/IIntentSender;
    :cond_33
    const/4 v5, 0x0

    goto :goto_2c

    .line 847
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v33           #packageName:Ljava/lang/String;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v60           #fl:I
    .end local v68           #type:I
    .end local v73           #requestIntents:[Landroid/content/Intent;
    .end local v74           #requestResolvedTypes:[Ljava/lang/String;
    .end local v154           #res:Landroid/content/IIntentSender;
    :pswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 850
    .local v148, r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 856
    .end local v148           #r:Landroid/content/IIntentSender;
    :pswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 859
    .restart local v148       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v154

    .line 860
    .local v154, res:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 862
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 866
    .end local v148           #r:Landroid/content/IIntentSender;
    .end local v154           #res:Ljava/lang/String;
    :pswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v128

    .line 868
    .local v128, max:I
    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 874
    .end local v128           #max:I
    :pswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v120

    .line 876
    .local v120, limit:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    move-object/from16 v0, p3

    move/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 882
    .end local v120           #limit:I
    :pswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 884
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 885
    .local v141, pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/16 v118, 0x1

    .line 886
    .local v118, isForeground:Z
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v141

    move/from16 v3, v118

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 885
    .end local v118           #isForeground:Z
    :cond_34
    const/16 v118, 0x0

    goto :goto_2d

    .line 892
    .end local v50           #token:Landroid/os/IBinder;
    .end local v141           #pid:I
    :pswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 894
    .restart local v36       #perm:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 895
    .restart local v141       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 896
    .local v82, uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v141

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v154

    .line 897
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 903
    .end local v36           #perm:Ljava/lang/String;
    .end local v82           #uid:I
    .end local v141           #pid:I
    .end local v154           #res:I
    :pswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 905
    .local v87, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v141

    .line 906
    .restart local v141       #pid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 907
    .restart local v82       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 908
    .local v88, mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v141

    move/from16 v3, v82

    move/from16 v4, v88

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v154

    .line 909
    .restart local v154       #res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 915
    .end local v82           #uid:I
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    .end local v141           #pid:I
    .end local v154           #res:I
    :pswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 917
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v136

    .line 919
    .local v136, observer:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v154

    .line 920
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    if-eqz v154, :cond_35

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 921
    :cond_35
    const/4 v5, 0x0

    goto :goto_2e

    .line 926
    .end local v33           #packageName:Ljava/lang/String;
    .end local v136           #observer:Landroid/content/pm/IPackageDataObserver;
    .end local v154           #res:Z
    :pswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 928
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 929
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 930
    .local v86, targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 931
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 932
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    move-object/from16 v2, v87

    move/from16 v3, v88

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 938
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v86           #targetPkg:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 940
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 941
    .restart local v6       #app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 942
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 943
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 949
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 951
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 952
    .restart local v6       #app:Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/16 v171, 0x1

    .line 953
    .local v171, waiting:Z
    :goto_2f
    move-object/from16 v0, p0

    move/from16 v1, v171

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 952
    .end local v171           #waiting:Z
    :cond_36
    const/16 v171, 0x0

    goto :goto_2f

    .line 959
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v95           #b:Landroid/os/IBinder;
    :pswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 960
    new-instance v131, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v131 .. v131}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 961
    .local v131, mi:Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    const/4 v5, 0x0

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 964
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 968
    .end local v131           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 970
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 975
    :pswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v87

    .line 977
    .restart local v87       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v139

    .line 978
    .local v139, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    if-eqz v139, :cond_37

    .line 980
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    const/4 v5, 0x1

    move-object/from16 v0, v139

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 985
    :goto_30
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 983
    :cond_37
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 989
    .end local v87           #uri:Landroid/net/Uri;
    .end local v139           #pfd:Landroid/os/ParcelFileDescriptor;
    :pswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 996
    :pswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 998
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1003
    :pswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1004
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v144

    .line 1005
    .local v144, pn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v173, 0x1

    .line 1006
    .local v173, wfd:Z
    :goto_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_39

    const/16 v138, 0x1

    .line 1007
    .local v138, per:Z
    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, v144

    move/from16 v2, v173

    move/from16 v3, v138

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1008
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1005
    .end local v138           #per:Z
    .end local v173           #wfd:Z
    :cond_38
    const/16 v173, 0x0

    goto :goto_31

    .line 1006
    .restart local v173       #wfd:Z
    :cond_39
    const/16 v138, 0x0

    goto :goto_32

    .line 1013
    .end local v144           #pn:Ljava/lang/String;
    .end local v173           #wfd:Z
    :pswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v108, 0x1

    .line 1015
    .local v108, enabled:Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1016
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1017
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1014
    .end local v108           #enabled:Z
    :cond_3a
    const/16 v108, 0x0

    goto :goto_33

    .line 1021
    :pswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v172

    .line 1024
    .local v172, watcher:Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1025
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1029
    .end local v172           #watcher:Landroid/app/IActivityController;
    :pswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1036
    :pswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v117

    .line 1039
    .local v117, is:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1045
    .end local v117           #is:Landroid/content/IIntentSender;
    :pswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1047
    .local v142, pids:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1048
    .local v149, reason:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    const/16 v158, 0x1

    .line 1049
    .local v158, secure:Z
    :goto_34
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    move-object/from16 v2, v149

    move/from16 v3, v158

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v154

    .line 1050
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    if-eqz v154, :cond_3c

    const/4 v5, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1048
    .end local v154           #res:Z
    .end local v158           #secure:Z
    :cond_3b
    const/16 v158, 0x0

    goto :goto_34

    .line 1051
    .restart local v154       #res:Z
    .restart local v158       #secure:Z
    :cond_3c
    const/4 v5, 0x0

    goto :goto_35

    .line 1056
    .end local v142           #pids:[I
    .end local v149           #reason:Ljava/lang/String;
    .end local v154           #res:Z
    .end local v158           #secure:Z
    :pswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1058
    .local v143, pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v102

    .line 1059
    .local v102, cls:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1060
    .local v90, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1061
    .local v113, indata:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v102

    move-object/from16 v3, v90

    move-object/from16 v4, v113

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1067
    .end local v90           #action:Ljava/lang/String;
    .end local v102           #cls:Ljava/lang/String;
    .end local v113           #indata:Ljava/lang/String;
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1069
    .local v6, app:Landroid/os/IBinder;
    new-instance v101, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1070
    .local v101, ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1071
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v6           #app:Landroid/os/IBinder;
    .end local v101           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1078
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v164

    .line 1079
    .local v164, tag:Ljava/lang/String;
    new-instance v101, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v101

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1080
    .restart local v101       #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v164

    move-object/from16 v2, v101

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v154

    .line 1081
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    if-eqz v154, :cond_3d

    const/4 v5, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1082
    :cond_3d
    const/4 v5, 0x0

    goto :goto_36

    .line 1087
    .end local v6           #app:Landroid/os/IBinder;
    .end local v101           #ci:Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v154           #res:Z
    .end local v164           #tag:Ljava/lang/String;
    :pswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1089
    .restart local v6       #app:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v170

    .line 1090
    .local v170, violationMask:I
    new-instance v114, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v114

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1091
    .local v114, info:Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v170

    move-object/from16 v2, v114

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1092
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1097
    .end local v6           #app:Landroid/os/IBinder;
    .end local v114           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v170           #violationMask:I
    :pswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 1099
    .local v159, sig:I
    move-object/from16 v0, p0

    move/from16 v1, v159

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1105
    .end local v159           #sig:I
    :pswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1107
    .restart local v33       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1113
    .end local v33           #packageName:Ljava/lang/String;
    :pswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1120
    :pswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1122
    .restart local v33       #packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1128
    .end local v33           #packageName:Ljava/lang/String;
    :pswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v30

    .line 1130
    .local v30, config:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1131
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1132
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1136
    .end local v30           #config:Landroid/content/pm/ConfigurationInfo;
    :pswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1138
    .local v76, process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v77, 0x1

    .line 1139
    .local v77, start:Z
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1140
    .local v80, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 1141
    .local v78, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v79

    .local v79, fd:Landroid/os/ParcelFileDescriptor;
    :goto_38
    move-object/from16 v75, p0

    .line 1143
    invoke-virtual/range {v75 .. v80}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v154

    .line 1144
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    if-eqz v154, :cond_40

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1146
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1138
    .end local v77           #start:Z
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v80           #profileType:I
    .end local v154           #res:Z
    :cond_3e
    const/16 v77, 0x0

    goto :goto_37

    .line 1141
    .restart local v77       #start:Z
    .restart local v78       #path:Ljava/lang/String;
    .restart local v80       #profileType:I
    :cond_3f
    const/16 v79, 0x0

    goto :goto_38

    .line 1145
    .restart local v79       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v154       #res:Z
    :cond_40
    const/4 v5, 0x0

    goto :goto_39

    .line 1150
    .end local v76           #process:Ljava/lang/String;
    .end local v77           #start:Z
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v80           #profileType:I
    .end local v154           #res:Z
    :pswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v154

    .line 1152
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    if-eqz v154, :cond_41

    const/4 v5, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1153
    :cond_41
    const/4 v5, 0x0

    goto :goto_3a

    .line 1158
    .end local v154           #res:Z
    :pswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1160
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1165
    :pswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1166
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1172
    :pswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/Intent;

    .line 1174
    .local v57, service:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1175
    .restart local v8       #resolvedType:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v97

    .line 1176
    .local v97, binder:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1178
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v57           #service:Landroid/content/Intent;
    .end local v97           #binder:Landroid/os/IBinder;
    :pswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ApplicationInfo;

    .line 1184
    .local v114, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    .line 1185
    .local v96, backupRestoreMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    move/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v163

    .line 1186
    .local v163, success:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1187
    if-eqz v163, :cond_42

    const/4 v5, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1188
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1187
    :cond_42
    const/4 v5, 0x0

    goto :goto_3b

    .line 1192
    .end local v96           #backupRestoreMode:I
    .end local v114           #info:Landroid/content/pm/ApplicationInfo;
    .end local v163           #success:Z
    :pswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1194
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 1195
    .local v91, agent:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v91

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1201
    .end local v33           #packageName:Ljava/lang/String;
    .end local v91           #agent:Landroid/os/IBinder;
    :pswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v114

    check-cast v114, Landroid/content/pm/ApplicationInfo;

    .line 1203
    .restart local v114       #info:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v114

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1209
    .end local v114           #info:Landroid/content/pm/ApplicationInfo;
    :pswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v172

    .line 1212
    .local v172, watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1213
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1217
    .end local v172           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityWatcher;

    move-result-object v172

    .line 1220
    .restart local v172       #watcher:Landroid/app/IActivityWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V

    .line 1221
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1226
    .end local v172           #watcher:Landroid/app/IActivityWatcher;
    :pswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1228
    .restart local v82       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 1229
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1230
    .restart local v8       #resolvedType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1231
    .local v11, resultTo:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1232
    .restart local v12       #resultWho:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1233
    .restart local v13       #requestCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43

    const/4 v14, 0x1

    .restart local v14       #onlyIfNeeded:Z
    :goto_3c
    move-object/from16 v81, p0

    move-object/from16 v83, v7

    move-object/from16 v84, v8

    move-object/from16 v85, v11

    move-object/from16 v86, v12

    move/from16 v87, v13

    move/from16 v88, v14

    .line 1234
    invoke-virtual/range {v81 .. v88}, Landroid/app/ActivityManagerNative;->startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I

    move-result v156

    .line 1236
    .local v156, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1233
    .end local v14           #onlyIfNeeded:Z
    .end local v156           #result:I
    :cond_43
    const/4 v14, 0x0

    goto :goto_3c

    .line 1242
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #resolvedType:Ljava/lang/String;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v12           #resultWho:Ljava/lang/String;
    .end local v13           #requestCode:I
    .end local v82           #uid:I
    :pswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1244
    .restart local v143       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1245
    .restart local v82       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationWithUid(Ljava/lang/String;I)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1251
    .end local v82           #uid:I
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v149

    .line 1253
    .restart local v149       #reason:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1259
    .end local v149           #reason:Ljava/lang/String;
    :pswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1261
    .restart local v142       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v154

    .line 1262
    .local v154, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1263
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1264
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1268
    .end local v142           #pids:[I
    .end local v154           #res:[Landroid/os/Debug$MemoryInfo;
    :pswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v145

    .line 1270
    .local v145, processName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1271
    .restart local v82       #uid:I
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1273
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1277
    .end local v82           #uid:I
    .end local v145           #processName:Ljava/lang/String;
    :pswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1279
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1280
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    .line 1281
    .local v109, enterAnim:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v110

    .line 1282
    .local v110, exitAnim:I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v33

    move/from16 v3, v109

    move/from16 v4, v110

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1284
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1288
    .end local v33           #packageName:Ljava/lang/String;
    .end local v50           #token:Landroid/os/IBinder;
    .end local v109           #enterAnim:I
    .end local v110           #exitAnim:I
    :pswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v93

    .line 1290
    .local v93, areThey:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    if-eqz v93, :cond_44

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1291
    :cond_44
    const/4 v5, 0x0

    goto :goto_3d

    .line 1296
    .end local v93           #areThey:Z
    :pswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1298
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1303
    :pswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1305
    .restart local v50       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v119

    .line 1306
    .local v119, isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    if-eqz v119, :cond_45

    const/4 v5, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1307
    :cond_45
    const/4 v5, 0x0

    goto :goto_3e

    .line 1312
    .end local v50           #token:Landroid/os/IBinder;
    .end local v119           #isit:Z
    :pswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 1314
    .restart local v50       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_46

    const/16 v112, 0x1

    .line 1315
    .local v112, imm:Z
    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1314
    .end local v112           #imm:Z
    :cond_46
    const/16 v112, 0x0

    goto :goto_3f

    .line 1321
    .end local v50           #token:Landroid/os/IBinder;
    :pswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v119

    .line 1323
    .restart local v119       #isit:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1324
    if-eqz v119, :cond_47

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1325
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1324
    :cond_47
    const/4 v5, 0x0

    goto :goto_40

    .line 1329
    .end local v119           #isit:Z
    :pswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1331
    .restart local v82       #uid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1332
    .local v115, initialPid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1333
    .restart local v33       #packageName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1334
    .local v130, message:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v82

    move/from16 v2, v115

    move-object/from16 v3, v33

    move-object/from16 v4, v130

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1340
    .end local v33           #packageName:Ljava/lang/String;
    .end local v82           #uid:I
    .end local v115           #initialPid:I
    .end local v130           #message:Ljava/lang/String;
    :pswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1342
    .restart local v87       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v68

    .line 1343
    .local v68, type:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1349
    .end local v68           #type:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    :pswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v134

    .line 1351
    .restart local v134       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v36

    .line 1352
    .local v36, perm:Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1354
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1358
    .end local v36           #perm:Landroid/os/IBinder;
    .end local v134           #name:Ljava/lang/String;
    :pswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1360
    .local v84, owner:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 1361
    .local v85, fromUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1362
    .restart local v86       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1363
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .restart local v88       #mode:I
    move-object/from16 v83, p0

    .line 1364
    invoke-virtual/range {v83 .. v88}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1366
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1370
    .end local v84           #owner:Landroid/os/IBinder;
    .end local v85           #fromUid:I
    .end local v86           #targetPkg:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    :pswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 1372
    .restart local v84       #owner:Landroid/os/IBinder;
    const/16 v87, 0x0

    .line 1373
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_48

    .line 1374
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1376
    :cond_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1377
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v87

    move/from16 v3, v88

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1383
    .end local v84           #owner:Landroid/os/IBinder;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v88           #mode:I
    :pswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1385
    .local v100, callingUid:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1386
    .restart local v86       #targetPkg:Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Landroid/net/Uri;

    .line 1387
    .restart local v87       #uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .line 1388
    .local v132, modeFlags:I
    move-object/from16 v0, p0

    move/from16 v1, v100

    move-object/from16 v2, v86

    move-object/from16 v3, v87

    move/from16 v4, v132

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v154

    .line 1389
    .local v154, res:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    move-object/from16 v0, p3

    move/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1395
    .end local v86           #targetPkg:Ljava/lang/String;
    .end local v87           #uri:Landroid/net/Uri;
    .end local v100           #callingUid:I
    .end local v132           #modeFlags:I
    .end local v154           #res:I
    :pswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 1397
    .restart local v76       #process:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_49

    const/16 v126, 0x1

    .line 1398
    .local v126, managed:Z
    :goto_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 1399
    .restart local v78       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4a

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v79

    .line 1401
    .restart local v79       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v126

    move-object/from16 v3, v78

    move-object/from16 v4, v79

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v154

    .line 1402
    .local v154, res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    if-eqz v154, :cond_4b

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1404
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1397
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v126           #managed:Z
    .end local v154           #res:Z
    :cond_49
    const/16 v126, 0x0

    goto :goto_41

    .line 1399
    .restart local v78       #path:Ljava/lang/String;
    .restart local v126       #managed:Z
    :cond_4a
    const/16 v79, 0x0

    goto :goto_42

    .line 1403
    .restart local v79       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v154       #res:Z
    :cond_4b
    const/4 v5, 0x0

    goto :goto_43

    .line 1409
    .end local v76           #process:Ljava/lang/String;
    .end local v78           #path:Ljava/lang/String;
    .end local v79           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v126           #managed:Z
    .end local v154           #res:Z
    :pswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v82

    .line 1411
    .restart local v82       #uid:I
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/content/Intent;

    .line 1412
    .local v116, intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v155

    .line 1413
    .local v155, resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1414
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v82

    move-object/from16 v2, v116

    move-object/from16 v3, v155

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/app/ActivityManagerNative;->startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v156

    .line 1415
    .restart local v156       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1422
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v82           #uid:I
    .end local v116           #intents:[Landroid/content/Intent;
    .end local v155           #resolvedTypes:[Ljava/lang/String;
    .end local v156           #result:I
    :pswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v95

    .line 1424
    .restart local v95       #b:Landroid/os/IBinder;
    invoke-static/range {v95 .. v95}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1425
    .local v6, app:Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/content/Intent;

    .line 1426
    .restart local v116       #intents:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v155

    .line 1427
    .restart local v155       #resolvedTypes:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1428
    .restart local v11       #resultTo:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v116

    move-object/from16 v2, v155

    invoke-virtual {v0, v6, v1, v2, v11}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v156

    .line 1429
    .restart local v156       #result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    move-object/from16 v0, p3

    move/from16 v1, v156

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1436
    .end local v6           #app:Landroid/app/IApplicationThread;
    .end local v11           #resultTo:Landroid/os/IBinder;
    .end local v95           #b:Landroid/os/IBinder;
    .end local v116           #intents:[Landroid/content/Intent;
    .end local v155           #resolvedTypes:[Ljava/lang/String;
    .end local v156           #result:I
    :pswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v88

    .line 1438
    .restart local v88       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1440
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1445
    .end local v88           #mode:I
    :pswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1447
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1455
    .end local v88           #mode:I
    :pswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1457
    .restart local v143       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v88

    .line 1458
    .restart local v88       #mode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    move-object/from16 v0, p3

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1465
    .end local v88           #mode:I
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1467
    .restart local v143       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v88

    .line 1468
    .restart local v88       #mode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1470
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1474
    .end local v88           #mode:I
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1476
    .local v168, userid:I
    move-object/from16 v0, p0

    move/from16 v1, v168

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v156

    .line 1477
    .local v156, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    if-eqz v156, :cond_4c

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1478
    :cond_4c
    const/4 v5, 0x0

    goto :goto_44

    .line 1484
    .end local v156           #result:Z
    .end local v168           #userid:I
    :pswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1486
    .local v166, taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v162

    .line 1487
    .local v162, subTaskIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v166

    move/from16 v2, v162

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v156

    .line 1488
    .restart local v156       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    if-eqz v156, :cond_4d

    const/4 v5, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1489
    :cond_4d
    const/4 v5, 0x0

    goto :goto_45

    .line 1495
    .end local v156           #result:Z
    .end local v162           #subTaskIndex:I
    .end local v166           #taskId:I
    :pswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v166

    .line 1497
    .restart local v166       #taskId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v60

    .line 1498
    .restart local v60       #fl:I
    move-object/from16 v0, p0

    move/from16 v1, v166

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v156

    .line 1499
    .restart local v156       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    if-eqz v156, :cond_4e

    const/4 v5, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1501
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1500
    :cond_4e
    const/4 v5, 0x0

    goto :goto_46

    .line 1505
    .end local v60           #fl:I
    .end local v156           #result:Z
    .end local v166           #taskId:I
    :pswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v136

    .line 1508
    .local v136, observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1509
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1513
    .end local v136           #observer:Landroid/app/IProcessObserver;
    :pswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v136

    .line 1516
    .restart local v136       #observer:Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1517
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1522
    .end local v136           #observer:Landroid/app/IProcessObserver;
    :pswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1524
    .restart local v143       #pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v94

    .line 1525
    .local v94, ask:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    if-eqz v94, :cond_4f

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1526
    :cond_4f
    const/4 v5, 0x0

    goto :goto_47

    .line 1532
    .end local v94           #ask:Z
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1534
    .restart local v143       #pkg:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50

    const/16 v94, 0x1

    .line 1535
    .restart local v94       #ask:Z
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v94

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1534
    .end local v94           #ask:Z
    :cond_50
    const/16 v94, 0x0

    goto :goto_48

    .line 1541
    .end local v143           #pkg:Ljava/lang/String;
    :pswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v148

    .line 1544
    .restart local v148       #r:Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v154

    .line 1545
    .restart local v154       #res:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    if-eqz v154, :cond_51

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1547
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1546
    :cond_51
    const/4 v5, 0x0

    goto :goto_49

    .line 1551
    .end local v148           #r:Landroid/content/IIntentSender;
    .end local v154           #res:Z
    :pswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/res/Configuration;

    .line 1553
    .local v30, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1555
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1559
    .end local v30           #config:Landroid/content/res/Configuration;
    :pswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v142

    .line 1561
    .restart local v142       #pids:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v147

    .line 1562
    .local v147, pss:[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    move-object/from16 v0, p3

    move-object/from16 v1, v147

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1564
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1568
    .end local v142           #pids:[I
    .end local v147           #pss:[J
    :pswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Ljava/lang/CharSequence;

    .line 1570
    .local v133, msg:Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_52

    const/16 v92, 0x1

    .line 1571
    .local v92, always:Z
    :goto_4a
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v92

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1573
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1570
    .end local v92           #always:Z
    :cond_52
    const/16 v92, 0x0

    goto :goto_4a

    .line 1577
    .end local v133           #msg:Ljava/lang/CharSequence;
    :pswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1584
    :pswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v169

    .line 1586
    .local v169, val:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    move-object/from16 v0, p3

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1588
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_50
        :pswitch_51
        :pswitch_1
        :pswitch_46
        :pswitch_47
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_0
        :pswitch_7
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_22
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_2a
        :pswitch_37
        :pswitch_38
        :pswitch_3c
        :pswitch_3d
        :pswitch_3f
        :pswitch_40
        :pswitch_42
        :pswitch_43
        :pswitch_4c
        :pswitch_44
        :pswitch_54
        :pswitch_17
        :pswitch_30
        :pswitch_13
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_4d
        :pswitch_5
        :pswitch_4e
        :pswitch_26
        :pswitch_35
        :pswitch_36
        :pswitch_2f
        :pswitch_3e
        :pswitch_2b
        :pswitch_1f
        :pswitch_45
        :pswitch_1a
        :pswitch_41
        :pswitch_57
        :pswitch_4f
        :pswitch_19
        :pswitch_18
        :pswitch_1b
        :pswitch_58
        :pswitch_5d
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_4
        :pswitch_68
        :pswitch_52
        :pswitch_55
        :pswitch_69
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_1c
        :pswitch_6a
        :pswitch_53
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_76
        :pswitch_75
        :pswitch_12
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_80
        :pswitch_81
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_56
        :pswitch_87
    .end packed-switch
.end method

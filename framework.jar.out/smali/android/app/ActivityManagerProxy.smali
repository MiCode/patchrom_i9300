.class Landroid/app/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 1618
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    iput-object p1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 1620
    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2051
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2052
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2054
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2055
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2058
    return-void
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 5
    .parameter "token"
    .parameter "config"
    .parameter "stopProfiling"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1991
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1992
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1994
    if-eqz p2, :cond_1

    .line 1995
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1996
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2000
    :goto_0
    if-eqz p3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2002
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2004
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2005
    return-void

    .line 1998
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2009
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2010
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2012
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2013
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2015
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2016
    return-void
.end method

.method public activitySlept(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2040
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2041
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2043
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    return-void
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "token"
    .parameter "state"
    .parameter "thumbnail"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2021
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2022
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2024
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2025
    if-eqz p3, :cond_0

    .line 2026
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2027
    invoke-virtual {p3, v0, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2031
    :goto_0
    invoke-static {p4, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2032
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2036
    return-void

    .line 2029
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachApplication(Landroid/app/IApplicationThread;)V
    .locals 5
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1979
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1980
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1981
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1982
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1983
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1986
    return-void
.end method

.method public backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .parameter "packageName"
    .parameter "agent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2532
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2533
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2535
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2536
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2537
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2539
    return-void
.end method

.method public bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .parameter "app"
    .parameter "backupRestoreMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2518
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2519
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2521
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2522
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2525
    .local v2, success:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2527
    return v2
.end method

.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;I)I
    .locals 6
    .parameter "caller"
    .parameter "token"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "connection"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2429
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2430
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2431
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2432
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2433
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2434
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2435
    invoke-interface {p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2436
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2437
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2440
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    return v2

    .line 2431
    .end local v2           #res:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    .locals 6
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "map"
    .parameter "requiredPermission"
    .parameter "serialized"
    .parameter "sticky"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1930
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1931
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1932
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1933
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1934
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1935
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1936
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1937
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1938
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1939
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1940
    if-eqz p9, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    if-eqz p10, :cond_3

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1944
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1945
    .local v2, res:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    return v2

    .line 1932
    .end local v2           #res:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1935
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1940
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 1941
    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 5
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2687
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2688
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2689
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2690
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2691
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    return-void
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    .locals 6
    .parameter "callingUid"
    .parameter "targetPkg"
    .parameter "uri"
    .parameter "modeFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3378
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3379
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3382
    invoke-virtual {p3, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3383
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3384
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3386
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3387
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3388
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    return v2
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 6
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2746
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2747
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2748
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2749
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2750
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2751
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2752
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2754
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2756
    return v2
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 6
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2775
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2776
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2777
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2778
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2780
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2781
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2782
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2783
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2784
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2785
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2786
    return v2
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    .locals 5
    .parameter "packageName"
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2761
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2762
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2764
    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2765
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2766
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2767
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2768
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2770
    return v2
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3185
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3186
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3188
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3189
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3192
    return-void
.end method

.method public crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uid"
    .parameter "initialPid"
    .parameter "packageName"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3300
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3301
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3304
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3305
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3306
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3310
    return-void
.end method

.method public dismissKeyguardOnNextActivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3652
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3653
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3654
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3655
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3659
    return-void
.end method

.method public dumpHeap(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 7
    .parameter "process"
    .parameter "managed"
    .parameter "path"
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3395
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3396
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3398
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3399
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3400
    if-eqz p4, :cond_1

    .line 3401
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3402
    invoke-virtual {p4, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3406
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x78

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 3409
    .local v2, res:Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3411
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 3398
    goto :goto_0

    .line 3404
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 3408
    goto :goto_2
.end method

.method public enterSafeMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2921
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2922
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2924
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    .locals 6
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1847
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1848
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1851
    if-eqz p3, :cond_0

    .line 1852
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1853
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1857
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1858
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1859
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1860
    .local v2, res:Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1862
    return v2

    .line 1855
    .end local v2           #res:Z
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1859
    goto :goto_1
.end method

.method public finishHeavyWeightApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3249
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3250
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3251
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3255
    return-void
.end method

.method public finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .locals 5
    .parameter "target"
    .parameter "resultCode"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2574
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2575
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2576
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2577
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2578
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2579
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2580
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2583
    return-void

    .line 2576
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 5
    .parameter "token"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2269
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2270
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2272
    invoke-static {p2, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2273
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2274
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2277
    return-void
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 5
    .parameter "who"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "map"
    .parameter "abortBroadcast"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1964
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1965
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1967
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1969
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1970
    if-eqz p5, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1971
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1975
    return-void

    .line 1970
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1866
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1867
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1868
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1870
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1871
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1872
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1876
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3044
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3045
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3046
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3048
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3051
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3052
    return-void
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2634
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2635
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2637
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2639
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2640
    .local v2, res:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2642
    return-object v2
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2074
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2075
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2076
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2078
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2079
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2080
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2081
    .local v2, res:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2083
    return-object v2
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2062
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2063
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2065
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2067
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2068
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2070
    return-object v2
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2587
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2588
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2589
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2591
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 2592
    .local v2, res:Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2594
    return-object v2
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .parameter "caller"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2301
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2302
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2303
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2304
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2305
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2306
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2307
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2308
    .local v3, res:I
    const/4 v0, 0x0

    .line 2309
    .local v0, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 2310
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 2312
    .restart local v0       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2313
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2314
    return-object v0

    .line 2303
    .end local v0           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3           #res:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3056
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3057
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3058
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3059
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3060
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3061
    sget-object v3, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ConfigurationInfo;

    .line 3062
    .local v2, res:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3063
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3064
    return-object v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3450
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3451
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3452
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3453
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3454
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3455
    .local v1, mode:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3457
    return v1
.end method

.method public getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;
    .locals 6
    .parameter "type"
    .parameter "packageName"
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2662
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2663
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2666
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2667
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2668
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2669
    if-eqz p6, :cond_0

    .line 2670
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2671
    invoke-virtual {v0, p6, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2672
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2676
    :goto_0
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2677
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2678
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2679
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 2681
    .local v2, res:Landroid/content/IIntentSender;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2683
    return-object v2

    .line 2674
    .end local v2           #res:Landroid/content/IIntentSender;
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 5
    .parameter "outInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2829
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2830
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2831
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2833
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2836
    return-void
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3499
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3500
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3501
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3502
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3503
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3504
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 3505
    .local v0, ask:Z
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3507
    return v0
.end method

.method public getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    .locals 6
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2697
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2698
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2699
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2700
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2702
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2703
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2705
    return-object v2
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2647
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2648
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2650
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2651
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2652
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2653
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2655
    return-object v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 6
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3473
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3474
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3476
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3477
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3478
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3479
    .local v1, mode:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3481
    return v1
.end method

.method public getProcessLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2721
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2722
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2723
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2725
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2726
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2727
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2728
    return v2
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 6
    .parameter "pids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3197
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3198
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3200
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3201
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3202
    sget-object v3, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Debug$MemoryInfo;

    .line 3203
    .local v2, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3204
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3205
    return-object v2
.end method

.method public getProcessPss([I)[J
    .locals 6
    .parameter "pids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3628
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3629
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3631
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3632
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3633
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 3634
    .local v2, res:[J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3636
    return-object v2
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2168
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2169
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2170
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2171
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2172
    sget-object v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2174
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2175
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2176
    return-object v1
.end method

.method public getProviderMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3315
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3316
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3317
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3318
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3320
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3321
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3323
    return-object v2
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 6
    .parameter "maxNum"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2114
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2115
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2117
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2118
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2119
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2120
    sget-object v3, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2122
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2123
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2124
    return-object v1
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2621
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2622
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2624
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2627
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2628
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2629
    return v2
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2181
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2182
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2183
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2184
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2185
    sget-object v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2187
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2188
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2189
    return-object v1
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2194
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2195
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2196
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2197
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2198
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2200
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2201
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2202
    return-object v1
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2347
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2348
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p1, v0, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2350
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2352
    invoke-static {v1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2353
    .local v2, res:Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2355
    return-object v2
.end method

.method public getServices(II)Ljava/util/List;
    .locals 8
    .parameter "maxNum"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2143
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2144
    .local v4, reply:Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2147
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x51

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2148
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2149
    const/4 v3, 0x0

    .line 2150
    .local v3, list:Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2151
    .local v0, N:I
    if-ltz v0, :cond_0

    .line 2152
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2153
    .restart local v3       #list:Ljava/util/ArrayList;
    :goto_0
    if-lez v0, :cond_0

    .line 2154
    sget-object v5, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2157
    .local v2, info:Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    add-int/lit8 v0, v0, -0x1

    .line 2159
    goto :goto_0

    .line 2161
    .end local v2           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2162
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2163
    return-object v3
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 6
    .parameter "token"
    .parameter "onlyRoot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2255
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2256
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2258
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2259
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2262
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2264
    return v2

    .end local v2           #res:I
    :cond_0
    move v3, v4

    .line 2258
    goto :goto_0
.end method

.method public getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2128
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2129
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2131
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2132
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2133
    const/4 v0, 0x0

    .line 2134
    .local v0, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2135
    sget-object v3, Landroid/app/ActivityManager$TaskThumbnails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    check-cast v0, Landroid/app/ActivityManager$TaskThumbnails;

    .line 2137
    .restart local v0       #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2138
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2139
    return-object v0
.end method

.method public getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .locals 8
    .parameter "maxNum"
    .parameter "flags"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2088
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2089
    .local v4, reply:Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2090
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/app/IThumbnailReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2093
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2094
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2095
    const/4 v3, 0x0

    .line 2096
    .local v3, list:Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2097
    .local v0, N:I
    if-ltz v0, :cond_1

    .line 2098
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    .restart local v3       #list:Ljava/util/ArrayList;
    :goto_1
    if-lez v0, :cond_1

    .line 2100
    sget-object v5, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2103
    .local v2, info:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    add-int/lit8 v0, v0, -0x1

    .line 2105
    goto :goto_1

    .line 2092
    .end local v0           #N:I
    .end local v2           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3           #list:Ljava/util/ArrayList;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2107
    .restart local v0       #N:I
    .restart local v3       #list:Ljava/util/ArrayList;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2109
    return-object v3
.end method

.method public getTopActivityPackageName()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3663
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3664
    .local v1, reply:Landroid/os/Parcel;
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3665
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3666
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3667
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3668
    return-object v2
.end method

.method public goingToSleep()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2865
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2866
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2867
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2870
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2871
    return-void
.end method

.method public grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .parameter "caller"
    .parameter "targetPkg"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2791
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2792
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2793
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2794
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2795
    invoke-virtual {p3, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2796
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2797
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2800
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2801
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .parameter "owner"
    .parameter "fromUid"
    .parameter "targetPkg"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3343
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3344
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3348
    invoke-virtual {p4, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3349
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3350
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3351
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3354
    return-void
.end method

.method public handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .parameter "app"
    .parameter "crashInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2968
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2969
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2971
    invoke-virtual {p2, v0, v4}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2972
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2973
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2976
    return-void
.end method

.method public handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .parameter "app"
    .parameter "violationMask"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3000
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3001
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3004
    invoke-virtual {p3, v0, v4}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3005
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3009
    return-void
.end method

.method public handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 5
    .parameter "app"
    .parameter "tag"
    .parameter "crashInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2982
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2983
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2985
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2986
    invoke-virtual {p3, v0, v2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2987
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2988
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2990
    .local v2, res:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2992
    return v2
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3273
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3274
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3276
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6f

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3277
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3278
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 3279
    .local v2, res:Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3281
    return v2

    .end local v2           #res:Z
    :cond_0
    move v2, v3

    .line 3278
    goto :goto_0
.end method

.method public isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .locals 5
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3603
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3604
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3605
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3606
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3608
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3609
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3611
    return v2
.end method

.method public isTopActivityImmersive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3287
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3288
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3289
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x71

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3291
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 3292
    .local v2, res:Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3294
    return v2

    .end local v2           #res:Z
    :cond_0
    move v2, v3

    .line 3291
    goto :goto_0
.end method

.method public isUserAMonkey()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3237
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3238
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3239
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3241
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3242
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3244
    return v2
.end method

.method public killAllBackgroundProcesses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3035
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3036
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3037
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3040
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3041
    return-void
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 5
    .parameter "processName"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3210
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3211
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3214
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    return-void
.end method

.method public killApplicationWithUid(Ljava/lang/String;I)V
    .locals 5
    .parameter "pkg"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3173
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3174
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3177
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3181
    return-void
.end method

.method public killBackgroundProcesses(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3024
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3025
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3027
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3030
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3031
    return-void
.end method

.method public killPids([ILjava/lang/String;Z)Z
    .locals 7
    .parameter "pids"
    .parameter "reason"
    .parameter "secure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2933
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2934
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2935
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2937
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2938
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2939
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x50

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 2941
    .local v2, res:Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2943
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 2938
    goto :goto_0

    :cond_1
    move v2, v5

    .line 2940
    goto :goto_1
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 7
    .parameter "token"
    .parameter "nonRoot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2230
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2231
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2233
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x4b

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2235
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2236
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 2237
    .local v2, res:Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2239
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 2233
    goto :goto_0

    :cond_1
    move v2, v5

    .line 2236
    goto :goto_1
.end method

.method public moveTaskBackwards(I)V
    .locals 5
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2244
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2245
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2247
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2248
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2250
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2251
    return-void
.end method

.method public moveTaskToBack(I)V
    .locals 5
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2219
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2220
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2222
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2223
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2226
    return-void
.end method

.method public moveTaskToFront(II)V
    .locals 5
    .parameter "task"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2207
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2208
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2215
    return-void
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3329
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3330
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3332
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3334
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3335
    .local v2, res:Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3337
    return-object v2
.end method

.method public noteWakeupAlarm(Landroid/content/IIntentSender;)V
    .locals 5
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2927
    .local v0, data:Landroid/os/Parcel;
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2928
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2929
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2931
    return-void
.end method

.method public openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2850
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2851
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2852
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2853
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2854
    const/4 v1, 0x0

    .line 2855
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2856
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 2858
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2859
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2860
    return-object v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 5
    .parameter "token"
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3223
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3224
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3226
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3227
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3228
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3229
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3233
    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .parameter "service"
    .parameter "resolvedType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2503
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2504
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2506
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2507
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2508
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2509
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2510
    .local v0, binder:Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2512
    return-object v0
.end method

.method public profileControl(Ljava/lang/String;ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z
    .locals 7
    .parameter "process"
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3071
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3072
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3074
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3075
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3076
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3077
    if-eqz p4, :cond_1

    .line 3078
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3079
    invoke-virtual {p4, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3083
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x56

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 3086
    .local v2, res:Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3087
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3088
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 3074
    goto :goto_0

    .line 3081
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 3085
    goto :goto_2
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 5
    .parameter "caller"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2319
    .local p2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2320
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2321
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2322
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2324
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2326
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2328
    return-void

    .line 2322
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .parameter "intent"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2461
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2462
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2463
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2464
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2465
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2466
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2470
    return-void
.end method

.method public registerActivityWatcher(Landroid/app/IActivityWatcher;)V
    .locals 5
    .parameter "watcher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3128
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3129
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3130
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IActivityWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3131
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3135
    return-void

    .line 3130
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3581
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3582
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3583
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3584
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3585
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3587
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3588
    return-void

    .line 3583
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .parameter "caller"
    .parameter "packageName"
    .parameter "receiver"
    .parameter "filter"
    .parameter "perm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1893
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1894
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 1895
    .local v3, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1896
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1897
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1898
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1899
    invoke-virtual {p4, v0, v6}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1900
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1901
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1902
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 1903
    const/4 v2, 0x0

    .line 1904
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1905
    .local v1, haveIntent:I
    if-eqz v1, :cond_1

    .line 1906
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #intent:Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    .line 1908
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1909
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1910
    return-object v2

    .end local v1           #haveIntent:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    move-object v4, v5

    .line 1896
    goto :goto_0
.end method

.method public removeContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .locals 5
    .parameter "caller"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2333
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2334
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2335
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2337
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2338
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2341
    return-void

    .line 2335
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeSubTask(II)Z
    .locals 5
    .parameter "taskId"
    .parameter "subTaskIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3538
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3539
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3542
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3543
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3544
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3545
    .local v2, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3547
    return v2
.end method

.method public removeTask(II)Z
    .locals 5
    .parameter "taskId"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3552
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3553
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3555
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3556
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3557
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3558
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3559
    .local v2, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3561
    return v2
.end method

.method public removeTask(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3567
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3568
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3570
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3573
    .local v2, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3575
    return v2
.end method

.method public reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "token"
    .parameter "thumbnail"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2282
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2283
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2285
    if-eqz p2, :cond_0

    .line 2286
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2287
    invoke-virtual {p2, v0, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2291
    :goto_0
    invoke-static {p3, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2292
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2295
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2296
    return-void

    .line 2289
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public resumeAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3117
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3118
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3119
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3123
    return-void
.end method

.method public revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    .locals 5
    .parameter "caller"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2805
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2806
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2807
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2808
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2809
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2810
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2811
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2812
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 5
    .parameter "owner"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3359
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3360
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3362
    if-eqz p2, :cond_0

    .line 3363
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3364
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3368
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3369
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3370
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3372
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3373
    return-void

    .line 3366
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 5
    .parameter "token"
    .parameter "type"
    .parameter "startId"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2489
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2490
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2493
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2494
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2495
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2497
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2498
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2499
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 5
    .parameter "watcher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2911
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2912
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2913
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IActivityController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2914
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2915
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2918
    return-void

    .line 2913
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAlwaysFinish(Z)V
    .locals 5
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2900
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2901
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2902
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2903
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2904
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2905
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    return-void

    :cond_0
    move v2, v3

    .line 2902
    goto :goto_0
.end method

.method public setDebugApp(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "packageName"
    .parameter "waitForDebugger"
    .parameter "persistent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2887
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2888
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2890
    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2892
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2893
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2896
    return-void

    :cond_0
    move v2, v4

    .line 2890
    goto :goto_0

    :cond_1
    move v3, v4

    .line 2891
    goto :goto_1
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3462
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3463
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3465
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3467
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3469
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "immersive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3260
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3261
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3263
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3264
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3265
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3268
    return-void

    :cond_0
    move v2, v3

    .line 3263
    goto :goto_0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 5
    .parameter "packageName"
    .parameter "ask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3513
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3514
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3516
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3517
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3519
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3521
    return-void

    :cond_0
    move v2, v3

    .line 3516
    goto :goto_0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3487
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3488
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3491
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3492
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3495
    return-void
.end method

.method public setProcessForeground(Landroid/os/IBinder;IZ)V
    .locals 5
    .parameter "token"
    .parameter "pid"
    .parameter "isForeground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2733
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2734
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2736
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2739
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2742
    return-void

    :cond_0
    move v2, v3

    .line 2737
    goto :goto_0
.end method

.method public setProcessLimit(I)V
    .locals 5
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2710
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2711
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2713
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2714
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2717
    return-void
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "requestedOrientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2610
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2611
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2615
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2618
    return-void
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 5
    .parameter "className"
    .parameter "token"
    .parameter "id"
    .parameter "notification"
    .parameter "removeNotification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2408
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2409
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2410
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2411
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2412
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    if-eqz p4, :cond_0

    .line 2414
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2415
    invoke-virtual {p4, v0, v3}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2419
    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2420
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2424
    return-void

    .line 2417
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 2419
    goto :goto_1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "msg"
    .parameter "always"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3641
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3642
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3643
    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 3644
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3645
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3647
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3648
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3649
    return-void

    :cond_0
    move v2, v3

    .line 3644
    goto :goto_0
.end method

.method public showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .locals 5
    .parameter "who"
    .parameter "waiting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2817
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2818
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2819
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2820
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2821
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2822
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2823
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2826
    return-void

    :cond_0
    move v2, v3

    .line 2821
    goto :goto_0
.end method

.method public shutdown(I)Z
    .locals 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3094
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3095
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3096
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3097
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3098
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3099
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3100
    .local v2, res:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3102
    return v2
.end method

.method public signalPersistentProcesses(I)V
    .locals 5
    .parameter "sig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3013
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3014
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3016
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3017
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3019
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3020
    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 6
    .parameter "caller"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3417
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3418
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3419
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3420
    invoke-virtual {v0, p2, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3421
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3422
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3423
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3426
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3428
    return v2

    .line 3419
    .end local v2           #result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startActivitiesInPackage(I[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 6
    .parameter "uid"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3434
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3435
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3437
    invoke-virtual {v0, p2, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3438
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3439
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3440
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7a

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3441
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3443
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3445
    return v2
.end method

.method public startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)I
    .locals 26
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "onlyIfNeeded"
    .parameter "debug"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v16

    .line 1639
    .local v16, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v22, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1642
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 1643
    .local v6, cmp:Landroid/content/ComponentName;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_5

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.android.settings"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1645
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v20

    .line 1646
    .local v20, rp:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v20, :cond_2

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1647
    const/4 v11, 0x0

    .line 1648
    .local v11, isActivityAllowed:Z
    const-string v22, ":android:show_fragment"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1649
    .local v4, activity:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1650
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1652
    :cond_0
    sget-object v5, Landroid/sec/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v14, :cond_1

    aget-object v9, v5, v10

    .line 1653
    .local v9, exception:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 1654
    const/4 v11, 0x1

    .line 1658
    .end local v9           #exception:Ljava/lang/String;
    :cond_1
    if-eqz v11, :cond_4

    .line 1659
    const/high16 v22, 0x80

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1711
    .end local v4           #activity:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #isActivityAllowed:Z
    .end local v14           #len$:I
    .end local v20           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :cond_2
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 1715
    .local v7, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v18

    .line 1716
    .local v18, reply:Landroid/os/Parcel;
    const-string v22, "android.app.IActivityManager"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1717
    if-eqz p1, :cond_a

    invoke-interface/range {p1 .. p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v22

    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1718
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1719
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1720
    const/16 v22, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1721
    move/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1723
    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1724
    move/from16 v0, p8

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    if-eqz p9, :cond_b

    const/16 v22, 0x1

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    if-eqz p10, :cond_c

    const/16 v22, 0x1

    :goto_4
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    move-object/from16 v0, p11

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1728
    if-eqz p12, :cond_d

    .line 1729
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    const/16 v22, 0x1

    move-object/from16 v0, p12

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1734
    :goto_5
    if-eqz p13, :cond_e

    const/16 v22, 0x1

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v18

    move/from16 v3, v24

    invoke-interface {v0, v1, v7, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1736
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->readException()V

    .line 1737
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1738
    .local v19, result:I
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->recycle()V

    .line 1739
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 1740
    .end local v7           #data:Landroid/os/Parcel;
    .end local v18           #reply:Landroid/os/Parcel;
    .end local v19           #result:I
    :goto_7
    return v19

    .line 1652
    .restart local v4       #activity:Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #exception:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #isActivityAllowed:Z
    .restart local v14       #len$:I
    .restart local v20       #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1661
    .end local v9           #exception:Ljava/lang/String;
    :cond_4
    const/16 v22, 0x1

    :try_start_1
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    .line 1662
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1663
    const/16 v19, 0x0

    goto :goto_7

    .line 1666
    .end local v4           #activity:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #isActivityAllowed:Z
    .end local v14           #len$:I
    .end local v20           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :catch_0
    move-exception v8

    .line 1667
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1670
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_6

    sget-object v22, Landroid/sec/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1673
    :try_start_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v13

    .line 1674
    .local v13, kioskService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v13, :cond_2

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-interface {v13, v0}, Landroid/sec/enterprise/IEDMProxy;->isTaskManagerAllowed(Z)Z

    move-result v22

    if-nez v22, :cond_2

    .line 1675
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1676
    const/16 v19, 0x0

    goto :goto_7

    .line 1678
    .end local v13           #kioskService:Landroid/sec/enterprise/IEDMProxy;
    :catch_1
    move-exception v8

    .line 1679
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v22, "ActivityManager"

    const-string v23, "Is edm running?"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1682
    .end local v8           #e:Ljava/lang/Exception;
    :cond_6
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 1684
    :try_start_3
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v17

    .line 1685
    .local v17, pwdPolicy:Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/sec/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v22

    if-lez v22, :cond_2

    .line 1686
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-interface/range {v22 .. v25}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v15

    .line 1687
    .local v15, list:Ljava/util/List;
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    .line 1688
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    .line 1689
    .local v21, topActivity:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1690
    .restart local v11       #isActivityAllowed:Z
    const/4 v12, 0x0

    .line 1691
    .local v12, isTopActivityException:Z
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1692
    .restart local v4       #activity:Ljava/lang/String;
    sget-object v5, Landroid/sec/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v14, v5

    .restart local v14       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    :goto_8
    if-ge v10, v14, :cond_8

    aget-object v9, v5, v10

    .line 1693
    .restart local v9       #exception:Ljava/lang/String;
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1694
    const/4 v12, 0x1

    .line 1696
    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 1697
    const/4 v11, 0x1

    .line 1701
    .end local v9           #exception:Ljava/lang/String;
    :cond_8
    if-eqz v12, :cond_2

    if-nez v11, :cond_2

    .line 1702
    invoke-static/range {v16 .. v16}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1703
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 1692
    .restart local v9       #exception:Ljava/lang/String;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1707
    .end local v4           #activity:Ljava/lang/String;
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #exception:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #isActivityAllowed:Z
    .end local v12           #isTopActivityException:Z
    .end local v14           #len$:I
    .end local v15           #list:Ljava/util/List;
    .end local v17           #pwdPolicy:Landroid/sec/enterprise/PasswordPolicy;
    .end local v21           #topActivity:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 1708
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1717
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #data:Landroid/os/Parcel;
    .restart local v18       #reply:Landroid/os/Parcel;
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1725
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1726
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 1732
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_5

    .line 1734
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_6
.end method

.method public startActivityAndWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)Landroid/app/IActivityManager$WaitResult;
    .locals 7
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "onlyIfNeeded"
    .parameter "debug"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1749
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1750
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1751
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1752
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1753
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1754
    const/4 v4, 0x0

    invoke-virtual {v1, p4, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1755
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1757
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    if-eqz p9, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1760
    if-eqz p10, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1762
    if-eqz p12, :cond_3

    .line 1763
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1764
    const/4 v4, 0x1

    move-object/from16 v0, p12

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1768
    :goto_3
    if-eqz p13, :cond_4

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1769
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x69

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1770
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1771
    sget-object v4, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager$WaitResult;

    .line 1772
    .local v3, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1774
    return-object v3

    .line 1751
    .end local v3           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1759
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1760
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 1766
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1768
    :cond_4
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public startActivityInPackage(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IZ)I
    .locals 6
    .parameter "uid"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "onlyIfNeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3154
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3155
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3157
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3158
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3159
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3160
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3162
    if-eqz p7, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3163
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x5f

    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3165
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3166
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3168
    return v2

    .end local v2           #result:I
    :cond_0
    move v3, v4

    .line 3162
    goto :goto_0
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;III)I
    .locals 6
    .parameter "caller"
    .parameter "intent"
    .parameter "fillInIntent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1807
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1808
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1809
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1810
    invoke-virtual {p2, v0, v5}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1811
    if-eqz p3, :cond_1

    .line 1812
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1817
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1819
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1821
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1822
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1825
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1826
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1828
    return v2

    .line 1809
    .end local v2           #result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1815
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public startActivityWithConfig(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/content/res/Configuration;)I
    .locals 7
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "onlyIfNeeded"
    .parameter "debug"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1782
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1783
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1784
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1785
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1786
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1787
    const/4 v4, 0x0

    invoke-virtual {v1, p4, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1788
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1789
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1790
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    if-eqz p9, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1793
    if-eqz p10, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1794
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1795
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1796
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 1797
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1798
    .local v3, result:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1800
    return v3

    .line 1784
    .end local v3           #result:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1792
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1793
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;)Z
    .locals 5
    .parameter "className"
    .parameter "profileFile"
    .parameter "flags"
    .parameter "arguments"
    .parameter "watcher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2556
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2557
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2558
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2559
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2560
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2562
    if-eqz p5, :cond_1

    invoke-interface {p5}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2563
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2566
    .local v2, res:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2568
    return v2

    .line 2562
    .end local v2           #res:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;)Z
    .locals 6
    .parameter "callingActivity"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1832
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1833
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1834
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1836
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1837
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x43

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1838
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1839
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1840
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1842
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pkg"
    .parameter "cls"
    .parameter "action"
    .parameter "indata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2948
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2949
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2952
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2954
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2956
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2958
    return-void
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .parameter "caller"
    .parameter "service"
    .parameter "resolvedType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2362
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2363
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2364
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2365
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2366
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2367
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2369
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2370
    .local v2, res:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2372
    return-object v2

    .line 2364
    .end local v2           #res:Landroid/content/ComponentName;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3107
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3108
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3109
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3111
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3113
    return-void
.end method

.method public stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 6
    .parameter "caller"
    .parameter "service"
    .parameter "resolvedType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2378
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2379
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2380
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2381
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2382
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2383
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2386
    .local v2, res:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2388
    return v2

    .line 2380
    .end local v2           #res:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 5
    .parameter "className"
    .parameter "token"
    .parameter "startId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2393
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2394
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2395
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2397
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2398
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2399
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2401
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2403
    return v2
.end method

.method public switchUser(I)Z
    .locals 5
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3525
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3526
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3528
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3529
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3530
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3531
    .local v2, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3533
    return v2
.end method

.method public testIsSystemReady()Z
    .locals 1

    .prologue
    .line 2962
    const/4 v0, 0x1

    return v0
.end method

.method public unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2543
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2544
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2545
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2546
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2548
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2550
    return-void
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 5
    .parameter "token"
    .parameter "intent"
    .parameter "doRebind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2475
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2476
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2478
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2479
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2480
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2481
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2484
    return-void

    :cond_0
    move v2, v3

    .line 2479
    goto :goto_0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2447
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2448
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2449
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2450
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2451
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2452
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2453
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2455
    return v2
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;)V
    .locals 5
    .parameter "caller"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1952
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1953
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1954
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1955
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1956
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1960
    return-void

    .line 1954
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unhandledBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2840
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2841
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2842
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2843
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2846
    return-void
.end method

.method public unregisterActivityWatcher(Landroid/app/IActivityWatcher;)V
    .locals 5
    .parameter "watcher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3140
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3141
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3142
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IActivityWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3143
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3144
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3147
    return-void

    .line 3142
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3592
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3593
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3594
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3595
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3599
    return-void

    .line 3594
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 5
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1915
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1916
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1917
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1918
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1919
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1922
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2599
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2600
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2602
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2606
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3617
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3618
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3619
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3620
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3624
    return-void
.end method

.method public wakingUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2875
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2876
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2877
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2878
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2879
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1879
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1880
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1882
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1883
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1884
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1885
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1887
    return v2
.end method

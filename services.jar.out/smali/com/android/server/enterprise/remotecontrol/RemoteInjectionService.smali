.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteInjection"


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 8
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 141
    :goto_0
    return v1

    .line 110
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v7, "Remote Control"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 121
    .local v2, token:J
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 126
    .local v4, wm:Landroid/view/IWindowManager;
    const/4 v1, 0x0

    .line 130
    .local v1, ret:Z
    :try_start_0
    invoke-interface {v4, p1, p2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "RemoteInjection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error injecting key event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 168
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v7, "Remote Control"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 178
    .local v2, token:J
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 183
    .local v4, wm:Landroid/view/IWindowManager;
    const/4 v1, 0x0

    .line 187
    .local v1, ret:Z
    :try_start_0
    invoke-interface {v4, p1, p2}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 195
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "RemoteInjection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error injecting pointer event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 224
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v7, "Remote Control"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 234
    .local v2, token:J
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 239
    .local v4, wm:Landroid/view/IWindowManager;
    const/4 v1, 0x0

    .line 243
    .local v1, ret:Z
    :try_start_0
    invoke-interface {v4, p1, p2}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 252
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "RemoteInjection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error injecting trackball event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 266
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 273
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 293
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

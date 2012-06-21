.class Lcom/android/server/DevicePolicyManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DevicePolicyManagerService;

.field final synthetic val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

.field final synthetic val$adminReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iput-object p3, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 763
    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v6, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    .line 766
    .local v0, doProxyCleanup:Z
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/DevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$admin:Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 767
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/DevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v6}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked()V

    .line 769
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    invoke-virtual {v6}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked()V

    .line 770
    if-eqz v0, :cond_0

    .line 771
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxy()V
    invoke-static {v6}, Lcom/android/server/DevicePolicyManagerService;->access$200(Lcom/android/server/DevicePolicyManagerService;)V

    .line 775
    :cond_0
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 776
    .local v4, timeMs:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 777
    const-wide/32 v4, 0x7fffffff

    .line 780
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;
    invoke-static {v6}, Lcom/android/server/DevicePolicyManagerService;->access$300(Lcom/android/server/DevicePolicyManagerService;)Landroid/os/IPowerManager;

    move-result-object v6

    long-to-int v7, v4

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 788
    :goto_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    #calls: Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked()V
    invoke-static {v6}, Lcom/android/server/DevicePolicyManagerService;->access$100(Lcom/android/server/DevicePolicyManagerService;)V

    .line 791
    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->this$0:Lcom/android/server/DevicePolicyManagerService;

    iget-object v6, v6, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 792
    .local v2, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService$2;->val$adminReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2, v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;)V

    .line 794
    monitor-exit p0

    .line 795
    return-void

    .line 781
    .end local v2           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_0
    move-exception v1

    .line 782
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Failure talking with power manager"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 794
    .end local v0           #doProxyCleanup:Z
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v4           #timeMs:J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 783
    .restart local v0       #doProxyCleanup:Z
    .restart local v4       #timeMs:J
    :catch_1
    move-exception v3

    .line 784
    .local v3, se:Ljava/lang/SecurityException;
    :try_start_3
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Failure talking with power manager"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

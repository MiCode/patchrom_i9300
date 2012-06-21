.class Lcom/android/server/WifiOffloadService$5;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$5;->val$processName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 925
    sget-object v5, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    monitor-enter v5

    .line 926
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiOffloadService$5;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/WifiOffloadService;->access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "activity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 927
    .local v1, manager:Landroid/app/ActivityManager;
    const/16 v4, 0x1f4

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 928
    .local v3, runningTaskInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 929
    .local v2, process:Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 930
    iget-object v4, p0, Lcom/android/server/WifiOffloadService$5;->val$processName:Ljava/lang/String;

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 931
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/WifiOffloadService;->isRunning:Z

    .line 932
    sget-object v4, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 933
    monitor-exit v5

    .line 939
    .end local v2           #process:Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-void

    .line 937
    :cond_1
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/WifiOffloadService;->isRunning:Z

    .line 938
    sget-object v4, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 939
    monitor-exit v5

    goto :goto_0

    .line 940
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #manager:Landroid/app/ActivityManager;
    .end local v3           #runningTaskInfos:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

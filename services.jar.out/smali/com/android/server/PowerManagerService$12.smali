.class Lcom/android/server/PowerManagerService$12;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3005
    iput-object p1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3007
    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 3008
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6400(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6500(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3009
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$6600(Lcom/android/server/PowerManagerService;)F

    move-result v1

    float-to-int v0, v1

    .line 3010
    .local v0, value:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$6402(Lcom/android/server/PowerManagerService;Z)Z

    .line 3011
    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$6502(Lcom/android/server/PowerManagerService;Z)Z

    .line 3012
    iget-object v1, p0, Lcom/android/server/PowerManagerService$12;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v1, v0}, Lcom/android/server/PowerManagerService;->access$6700(Lcom/android/server/PowerManagerService;I)V

    .line 3014
    .end local v0           #value:I
    :cond_1
    monitor-exit v2

    .line 3015
    return-void

    .line 3014
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

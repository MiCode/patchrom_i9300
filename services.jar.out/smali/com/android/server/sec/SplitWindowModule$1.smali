.class Lcom/android/server/sec/SplitWindowModule$1;
.super Ljava/lang/Object;
.source "SplitWindowModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/SplitWindowModule;->notifySIP(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/SplitWindowModule;


# direct methods
.method constructor <init>(Lcom/android/server/sec/SplitWindowModule;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/sec/SplitWindowModule$1;->this$0:Lcom/android/server/sec/SplitWindowModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    monitor-enter p0

    .line 77
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sec/SplitWindowModule$1;->this$0:Lcom/android/server/sec/SplitWindowModule;

    #calls: Lcom/android/server/sec/SplitWindowModule;->changeMaximumRect()V
    invoke-static {v1}, Lcom/android/server/sec/SplitWindowModule;->access$000(Lcom/android/server/sec/SplitWindowModule;)V

    .line 78
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

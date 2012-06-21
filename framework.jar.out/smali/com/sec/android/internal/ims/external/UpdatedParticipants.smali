.class public Lcom/sec/android/internal/ims/external/UpdatedParticipants;
.super Ljava/lang/Object;
.source "UpdatedParticipants.java"


# static fields
.field public static activeParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mActivePlusAlertingCallersCnt:I

.field private static mIsNotifyRcvd:Z

.field public static ringingParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field public participantState:I

.field public phoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 8
    sput-object v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    .line 9
    sput-object v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    .line 10
    sput-boolean v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->mIsNotifyRcvd:Z

    .line 11
    sput v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->mActivePlusAlertingCallersCnt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "UpdatedParticipants"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->LOG_TAG:Ljava/lang/String;

    .line 18
    const-string v0, "0102233796"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->phoneNumber:Ljava/lang/String;

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->participantState:I

    .line 20
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "participantsState"
    .parameter "phoneNumber"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "UpdatedParticipants"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->LOG_TAG:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->phoneNumber:Ljava/lang/String;

    .line 29
    iput p1, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->participantState:I

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/internal/ims/external/UpdatedParticipants;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "UpdatedParticipants"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->LOG_TAG:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->phoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->phoneNumber:Ljava/lang/String;

    .line 24
    iget v0, p1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->participantState:I

    iput v0, p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->participantState:I

    .line 25
    return-void
.end method

.method public static declared-synchronized addActiveParticipant(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 60
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    .line 63
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addRingingParticipant(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 68
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    .line 71
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v1

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized addRingingParticipant(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "clear"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, ringingNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    :cond_1
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v1

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearParticipantNumbers(Z)V
    .locals 2
    .parameter "deInit"

    .prologue
    .line 104
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    if-eqz p0, :cond_0

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    .line 111
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    if-eqz p0, :cond_1

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_1
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createParticipantNumberList()V
    .locals 2

    .prologue
    .line 45
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    .line 51
    :goto_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_1
    monitor-exit v1

    return-void

    .line 48
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 54
    :cond_1
    :try_start_2
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized getActiveParticipantCount()I
    .locals 2

    .prologue
    .line 87
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 90
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getActiveParticipants()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->activeParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNotifiedCallersCnt()I
    .locals 2

    .prologue
    .line 135
    const-class v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->mActivePlusAlertingCallersCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getNotifyStatus()Z
    .locals 2

    .prologue
    .line 121
    const-class v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->mIsNotifyRcvd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getRingingParticipants()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRinigingParticipantCount()I
    .locals 2

    .prologue
    .line 95
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->ringingParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 98
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 139
    const-string v0, "UpdatedParticipants"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public static declared-synchronized setNotifyStatus(ZI)V
    .locals 2
    .parameter "statusVal"
    .parameter "notifiedCallersCountVal"

    .prologue
    .line 129
    const-class v1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;

    monitor-enter v1

    :try_start_0
    sput-boolean p0, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->mIsNotifyRcvd:Z

    .line 130
    sput p1, Lcom/sec/android/internal/ims/external/UpdatedParticipants;->mActivePlusAlertingCallersCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v1

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

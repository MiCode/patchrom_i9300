.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z

.field static VT_FALLBACK_TO_VC:I

.field static VT_NORMAL_HANGUP:I


# instance fields
.field backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field connWaitActive:[Ljava/lang/Boolean;

.field connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field desiredMute:Z

.field droppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field hangupPendingMO:Z

.field pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field state:Lcom/android/internal/telephony/Phone$State;

.field voiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field voiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x58

    sput v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->VT_FALLBACK_TO_VC:I

    .line 75
    const/16 v0, 0x1f

    sput v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->VT_NORMAL_HANGUP:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 6
    .parameter "phone"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 79
    new-array v1, v3, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 81
    new-array v1, v3, [Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    .line 83
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 93
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 94
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 101
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 103
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 113
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 114
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 116
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 816
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringing call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 821
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 822
    const-string v3, "GSM"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_0
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Foreground call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 828
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 829
    const-string v3, "GSM"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 832
    :cond_1
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 835
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 836
    const-string v3, "GSM"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 839
    :cond_2
    return-void
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 184
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 186
    .local v1, connCopy:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, i:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 187
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 189
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "what"

    .prologue
    .line 1048
    sparse-switch p1, :sswitch_data_0

    .line 1062
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1050
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1052
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1054
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1056
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1059
    :sswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->DEFLECT:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1048
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x64 -> :sswitch_4
    .end sparse-switch
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 810
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 479
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 496
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 508
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    .line 513
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    if-eqz v0, :cond_1

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    if-gez v0, :cond_0

    .line 518
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CallTracker;->pendingOperations:I

    goto :goto_0
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 527
    .local v0, oldState:Lcom/android/internal/telephony/Phone$State;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 544
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v0, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 547
    :cond_1
    return-void

    .line 529
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_4

    .line 531
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 533
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .line 539
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 361
    const-string/jumbo v0, "phone"

    const-string v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 371
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 366
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 367
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 369
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method allCallClear()V
    .locals 3

    .prologue
    .line 1001
    const-string v0, "[NAM] [CallTracker.java] >> allCallClear"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1004
    return-void
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 431
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 432
    .local v2, serviceState:I
    const-string/jumbo v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, disableCall:Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 446
    .local v1, ret:Z
    :goto_0
    return v1

    .line 435
    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canVideoCallDial()Z
    .locals 3

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 457
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 462
    .local v0, ret:Z
    :goto_0
    return v0

    .line 457
    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 416
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 418
    return-void
.end method

.method conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 398
    return-void
.end method

.method deflect(Ljava/lang/String;)V
    .locals 2
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->deflect(Ljava/lang/String;Landroid/os/Message;)V

    .line 409
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 5
    .parameter "dialString"
    .parameter "clirMode"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 219
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 224
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "cannot dial in current state"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 227
    :cond_2
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, v2, p1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 228
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 289
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 290
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 292
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v1

    .line 241
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 245
    const/4 v0, 0x0

    .line 275
    .local v0, emergencyCat:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_5

    .line 280
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p2, v3}, Lcom/android/internal/telephony/CommandsInterface;->dialEmergencyCall(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 282
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, p2, p3, v3}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_0
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dialVideoCall(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dialVideoCall(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 4
    .parameter "dialString"
    .parameter "clirMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canVideoCallDial()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Video call can not be dialed in current state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->setVideoCall(Z)V

    .line 326
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 343
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    return-object v0

    .line 338
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->dialVideoCall(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 7

    .prologue
    .line 129
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/CallTracker;->mIsDisposed:Z

    .line 132
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 133
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 134
    iget-object v5, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/GsmConnection;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 138
    .local v1, c:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v2

    .line 140
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSM"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v1           #c:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 151
    return-void

    .line 146
    :catch_1
    move-exception v2

    .line 147
    .restart local v2       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSM"

    const-string/jumbo v6, "unexpected error on hangup during dispose"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method explicitCallTransfer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 403
    return-void
.end method

.method fallbackHangupVTCall(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 3
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    const-string v0, "GSM"

    const-string v1, "fallbackVTCall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fallbackVT(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 980
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 982
    return-void

    .line 977
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to GsmCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method fallbackVT(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 3
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v0, p0, :cond_0

    .line 874
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to GsmCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    sget v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->VT_FALLBACK_TO_VC:I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->hangupVT(ILandroid/os/Message;)V

    .line 877
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 878
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 154
    const-string v0, "GSM"

    const-string v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1037
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1038
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1039
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1044
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return-object v0

    .line 1037
    .restart local v0       #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1044
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 1077
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1079
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1081
    .local v9, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 1084
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallTracker;->needsPoll:Z

    .line 1085
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/CallTracker;->lastRelevantPoll:Landroid/os/Message;

    .line 1086
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1091
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1092
    .restart local v9       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto :goto_0

    .line 1100
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1101
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1104
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto :goto_0

    .line 1109
    .end local v9           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    const/4 v10, 0x0

    .line 1110
    .local v10, call_fail_reason:I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1112
    .restart local v9       #ar:Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1114
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    .line 1117
    const/16 v11, 0x10

    .line 1118
    .local v11, causeCode:I
    const-string v1, "GSM"

    const-string v2, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :goto_1
    const/4 v14, 0x0

    .line 1130
    .local v14, isDroppedCall:Z
    const/16 v1, 0x22

    if-eq v11, v1, :cond_2

    const/16 v1, 0x29

    if-eq v11, v1, :cond_2

    const/16 v1, 0x2a

    if-eq v11, v1, :cond_2

    const/16 v1, 0x2c

    if-eq v11, v1, :cond_2

    const/16 v1, 0x31

    if-eq v11, v1, :cond_2

    const/16 v1, 0x3a

    if-eq v11, v1, :cond_2

    const v1, 0xffff

    if-eq v11, v1, :cond_2

    const/16 v1, 0x26

    if-eq v11, v1, :cond_2

    const/16 v1, 0x2b

    if-eq v11, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v11, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v11, v1, :cond_2

    const/16 v1, 0x39

    if-eq v11, v1, :cond_2

    const/16 v1, 0x45

    if-eq v11, v1, :cond_2

    const/16 v1, 0x58

    if-eq v11, v1, :cond_2

    const/4 v1, 0x1

    if-ne v11, v1, :cond_3

    .line 1145
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v15

    check-cast v15, Landroid/telephony/gsm/GsmCellLocation;

    .line 1146
    .local v15, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v2, 0xc3ba

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1151
    const/4 v14, 0x1

    .line 1155
    .end local v15           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const/4 v13, 0x0

    .local v13, i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, s:I
    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1158
    .local v12, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v14, :cond_7

    .line 1159
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_LAST_CALL_FAIL_CAUSE - CALL_DROP - causeCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v2, "dropped"

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCreateTime()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v6

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v8

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 1179
    :cond_4
    :goto_4
    invoke-virtual {v12, v11, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(II)V

    .line 1155
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1121
    .end local v11           #causeCode:I
    .end local v12           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v13           #i:I
    .end local v14           #isDroppedCall:Z
    .end local v16           #s:I
    :cond_5
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v11, v1, v2

    .line 1124
    .restart local v11       #causeCode:I
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x1

    aget v10, v1, v2

    goto/16 :goto_1

    .line 1146
    .restart local v14       #isDroppedCall:Z
    .restart local v15       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    const/4 v1, -0x1

    goto :goto_2

    .line 1162
    .end local v15           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v12       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v13       #i:I
    .restart local v16       #s:I
    :cond_7
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_LAST_CALL_FAIL_CAUSE - SUCCESS - causeCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 1165
    iget-object v1, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1167
    const-string/jumbo v2, "success"

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCreateTime()J

    move-result-wide v4

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v6

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v8

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto :goto_4

    .line 1185
    .end local v12           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1187
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1188
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1193
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #call_fail_reason:I
    .end local v11           #causeCode:I
    .end local v13           #i:I
    .end local v14           #isDroppedCall:Z
    .end local v16           #s:I
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1197
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 1201
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1077
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method protected handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 24
    .parameter "ar"

    .prologue
    .line 553
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 554
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/List;

    .line 566
    .local v21, polledCalls:Ljava/util/List;
    :goto_0
    const/16 v20, 0x0

    .line 567
    .local v20, newRinging:Lcom/android/internal/telephony/Connection;
    const/16 v17, 0x0

    .line 569
    .local v17, hasNonHangupStateChanged:Z
    const/16 v19, 0x0

    .line 570
    .local v19, needsPollDelay:Z
    const/16 v23, 0x0

    .line 572
    .local v23, unknownConnectionAppeared:Z
    const/16 v18, 0x0

    .local v18, i:I
    const/4 v13, 0x0

    .local v13, curDC:I
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v15

    .line 573
    .local v15, dcSize:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_16

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v12, v2, v18

    .line 575
    .local v12, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v14, 0x0

    .line 578
    .local v14, dc:Lcom/android/internal/telephony/DriverCall;
    if-ge v13, v15, :cond_0

    .line 579
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #dc:Lcom/android/internal/telephony/DriverCall;
    check-cast v14, Lcom/android/internal/telephony/DriverCall;

    .line 581
    .restart local v14       #dc:Lcom/android/internal/telephony/DriverCall;
    iget v2, v14, Lcom/android/internal/telephony/DriverCall;->index:I

    add-int/lit8 v3, v18, 0x1

    if-ne v2, v3, :cond_4

    .line 582
    add-int/lit8 v13, v13, 0x1

    .line 591
    :cond_0
    :goto_2
    if-nez v12, :cond_a

    if-eqz v14, :cond_a

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    aput-object v3, v2, v18

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move/from16 v0, v18

    iput v0, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 601
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 604
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    if-eqz v2, :cond_6

    .line 605
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 607
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "poll: hangupPendingMO, hangup conn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v12           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v13           #curDC:I
    .end local v14           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v15           #dcSize:I
    .end local v17           #hasNonHangupStateChanged:Z
    .end local v18           #i:I
    .end local v19           #needsPollDelay:Z
    .end local v20           #newRinging:Lcom/android/internal/telephony/Connection;
    .end local v21           #polledCalls:Ljava/util/List;
    .end local v23           #unknownConnectionAppeared:Z
    :cond_1
    :goto_3
    return-void

    .line 555
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 558
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .restart local v21       #polledCalls:Ljava/util/List;
    goto/16 :goto_0

    .line 562
    .end local v21           #polledCalls:Ljava/util/List;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    goto :goto_3

    .line 584
    .restart local v12       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v13       #curDC:I
    .restart local v14       #dc:Lcom/android/internal/telephony/DriverCall;
    .restart local v15       #dcSize:I
    .restart local v17       #hasNonHangupStateChanged:Z
    .restart local v18       #i:I
    .restart local v19       #needsPollDelay:Z
    .restart local v20       #newRinging:Lcom/android/internal/telephony/Connection;
    .restart local v21       #polledCalls:Ljava/util/List;
    .restart local v23       #unknownConnectionAppeared:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 610
    :catch_0
    move-exception v16

    .line 611
    .local v16, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string/jumbo v3, "unexpected error on hangup"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 619
    .end local v16           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v3, v4, v14, v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v3, v2, v18

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne v2, v3, :cond_8

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v20, v2, v18

    .line 643
    :cond_6
    :goto_4
    const/16 v17, 0x1

    .line 687
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    if-nez v2, :cond_10

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v18

    .line 573
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 630
    :cond_8
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phantom call appeared "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    iget-object v2, v14, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_9

    iget-object v2, v14, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v3, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v2, v3, :cond_9

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 640
    :cond_9
    const/16 v23, 0x1

    goto :goto_4

    .line 644
    :cond_a
    if-eqz v12, :cond_b

    if-nez v14, :cond_b

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v3, 0x0

    aput-object v3, v2, v18

    goto :goto_5

    .line 651
    :cond_b
    if-eqz v12, :cond_d

    if-eqz v14, :cond_d

    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    new-instance v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v3, v4, v14, v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v3, v2, v18

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne v2, v3, :cond_c

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v20, v2, v18

    .line 661
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 662
    :cond_d
    if-eqz v12, :cond_7

    if-eqz v14, :cond_7

    .line 664
    invoke-virtual {v12, v14}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v11

    .line 665
    .local v11, changed:Z
    if-nez v17, :cond_e

    if-eqz v11, :cond_f

    :cond_e
    const/16 v17, 0x1

    :goto_7
    goto/16 :goto_5

    :cond_f
    const/16 v17, 0x0

    goto :goto_7

    .line 690
    .end local v11           #changed:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v22

    .line 691
    .local v22, state:Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_11

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-eq v0, v2, :cond_11

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_13

    .line 693
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 694
    const-string v2, "GsmCallTracker"

    const-string v3, "Emergency call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v18

    goto/16 :goto_6

    .line 697
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v18

    goto/16 :goto_6

    .line 699
    :cond_13
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v22

    if-ne v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 700
    const-string v3, "GsmCallTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADD CALL "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-eqz v2, :cond_14

    const-string v2, "INCOMING"

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v2, v2, v18

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->addNumberOfCalls(Z)V

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v18

    goto/16 :goto_6

    .line 700
    :cond_14
    const-string v2, "OUTGOING"

    goto :goto_8

    .line 705
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->connWaitActive:[Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v18

    goto/16 :goto_6

    .line 714
    .end local v12           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v14           #dc:Lcom/android/internal/telephony/DriverCall;
    .end local v22           #state:Lcom/android/internal/telephony/Call$State;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v2, :cond_17

    .line 715
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending MO dropped before poll fg state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 720
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 723
    :cond_17
    if-eqz v20, :cond_18

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 730
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v18, v2, -0x1

    :goto_9
    if-ltz v18, :cond_1e

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 733
    .restart local v12       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    .line 736
    iget-object v2, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_1a

    .line 737
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 746
    .local v10, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "missed/rejected call, conn.cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting cause to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 750
    invoke-virtual {v12, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 730
    .end local v10           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_19
    :goto_b
    add-int/lit8 v18, v18, -0x1

    goto :goto_9

    .line 739
    :cond_1a
    sget-object v10, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 741
    .restart local v10       #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    const-string/jumbo v3, "missed"

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v7

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v9

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto :goto_a

    .line 751
    .end local v10           #cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    :cond_1b
    iget-object v2, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_1d

    .line 755
    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 756
    iget-object v2, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 759
    const-string/jumbo v3, "success"

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDurationMillis()J

    move-result-wide v7

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v9

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->logCallEvent(Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 763
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 764
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 765
    :cond_1d
    iget-object v2, v12, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v3, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v3, :cond_19

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 768
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    goto :goto_b

    .line 773
    .end local v12           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->droppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCause(Landroid/os/Message;)V

    .line 778
    :cond_1f
    if-eqz v19, :cond_20

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 787
    :cond_20
    if-nez v20, :cond_21

    if-eqz v17, :cond_22

    .line 788
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 791
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 793
    if-eqz v23, :cond_23

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection()V

    .line 797
    :cond_23
    if-nez v17, :cond_24

    if-eqz v20, :cond_1

    .line 798
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_3
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 5
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 917
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v3, "no connections in call"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_2

    .line 921
    const-string v2, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 922
    iget-object v2, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 962
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 963
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 964
    return-void

    .line 923
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_7

    .line 924
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 926
    const-string v2, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 930
    :cond_3
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, salesCode:Ljava/lang/String;
    const-string v2, "KTT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 933
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 934
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 936
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 937
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_5

    .line 938
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 939
    const-string v2, "(TN_KOR_KT) hangup..."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 945
    .end local v0           #i:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 948
    .end local v1           #salesCode:Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v2, :cond_9

    .line 949
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 951
    const-string v2, "hangup all conns in background call"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto/16 :goto_0

    .line 955
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto/16 :goto_0

    .line 958
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GsmCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "does not belong to GsmCallTracker "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 846
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 854
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 855
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupPendingMO:Z

    .line 867
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 868
    return-void

    .line 858
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 862
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1023
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1024
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1025
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1026
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1028
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 1029
    .local v2, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .end local v2           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .parameter "call"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1009
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1010
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1011
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1012
    .local v0, cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1013
    iget-object v3, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1014
    return-void

    .line 1010
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1018
    .end local v0           #cn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 993
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 995
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 987
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 989
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1207
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 170
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 172
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 161
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 163
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 382
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 884
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 888
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 893
    .local v0, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 902
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    .line 903
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->desiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 904
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 388
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 393
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 176
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->voiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 167
    return-void
.end method

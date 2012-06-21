.class final Lcom/android/internal/telephony/ims/IMSConnection;
.super Lcom/android/internal/telephony/Connection;
.source "IMSConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/IMSConnection$1;,
        Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "IMSConnection"

.field static final PAUSE_DELAY_MILLIS:I = 0x7d0

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field connectTime:J

.field connectTimeReal:J

.field connectionIndex:I

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isIncoming:Z

.field isThrwayCall:Z

.field mCallFailCause:I

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

.field parent:Lcom/android/internal/telephony/ims/IMSCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 413
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/ims/IMSCallTracker;I)V
    .locals 4
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->createWakeLock(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 149
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    .line 151
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 153
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    .line 155
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 156
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 157
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 160
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->mCallType:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCallType:I

    .line 161
    const-string v0, "IMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCalltype in IMSConnection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput p4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 164
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->connectionIndex:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectionIndex:I

    .line 165
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/ims/IMSCall;->attach(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 167
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 168
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 169
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 2
    .parameter "context"
    .parameter "cw"
    .parameter "ct"
    .parameter "parent"

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 391
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->createWakeLock(Landroid/content/Context;)V

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 394
    iput-object p3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 395
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    .line 396
    iget-object v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 397
    iget v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 398
    iget-object v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 399
    iget v0, p2, Lcom/android/internal/telephony/ims/IMSCallWaitingNotification;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 400
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    .line 403
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    .line 404
    iput-object p4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 405
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 406
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/ims/IMSCallTracker;Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 4
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 95
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 96
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 97
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 99
    iput v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 323
    const-string v0, "IMSConnection"

    const-string v1, "[IMSConn]  IMSConnection construction  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->createWakeLock(Landroid/content/Context;)V

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 327
    iput-object p3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    .line 328
    new-instance v0, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ims/IMSCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection$MyHandler;-><init>(Lcom/android/internal/telephony/ims/IMSConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    .line 330
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->dialString:Ljava/lang/String;

    .line 331
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] IMSConnection: dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] IMSConnection:formated dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/ims/IMSConnection;->formatDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 337
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 341
    iput-boolean v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 343
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 344
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    .line 347
    if-eqz p4, :cond_0

    .line 348
    iput-object p4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 351
    iget-object v0, p4, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 352
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 356
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn]  parent call state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p4, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 310
    const-string v0, "acquireWakeLock"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 312
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 316
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 317
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "IMSConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 318
    return-void
.end method

.method private disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 3
    .parameter "causeCode"

    .prologue
    .line 750
    sparse-switch p1, :sswitch_data_0

    .line 764
    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 765
    .local v0, phone:Lcom/android/internal/telephony/ims/IMSPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/IMSPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 766
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 767
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 781
    .end local v0           #phone:Lcom/android/internal/telephony/ims/IMSPhone;
    .end local v1           #serviceState:I
    :goto_0
    return-object v2

    .line 752
    :sswitch_0
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 754
    :sswitch_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 756
    :sswitch_2
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 758
    :sswitch_3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 760
    :sswitch_4
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 768
    .restart local v0       #phone:Lcom/android/internal/telephony/ims/IMSPhone;
    .restart local v1       #serviceState:I
    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 770
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 778
    :cond_2
    const/16 v2, 0x10

    if-ne p1, v2, :cond_3

    .line 779
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 781
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 750
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
    .end sparse-switch
.end method

.method private doDisconnect()V
    .locals 4

    .prologue
    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnectTime:J

    .line 701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    .line 702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    .line 704
    return-void
.end method

.method private equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 830
    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private formatDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 362
    if-nez p1, :cond_0

    .line 364
    const/4 v5, 0x0

    .line 383
    :goto_0
    return-object v5

    .line 367
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 368
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 371
    .local v1, firstCharAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 373
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 374
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 383
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 380
    .restart local v0       #c:C
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCall;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onStartedHolding()V
    .locals 2

    .prologue
    .line 904
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->holdingStartTime:J

    .line 905
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/ims/IMSCall;
    .locals 3
    .parameter "state"

    .prologue
    .line 286
    sget-object v0, Lcom/android/internal/telephony/ims/IMSConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->foregroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    .line 299
    :goto_0
    return-object v0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->backgroundCall:Lcom/android/internal/telephony/ims/IMSCall;

    goto :goto_0

    .line 299
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->ringingCall:Lcom/android/internal/telephony/ims/IMSCall;

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 422
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .parameter "dc"

    .prologue
    const/4 v1, 0x1

    .line 817
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v1

    .line 822
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public fallbackVT()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 570
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getCall()Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/ims/IMSCall;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    return-object v0
.end method

.method public getCallFailCause()I
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    return v0
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 448
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 475
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 484
    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 489
    :goto_0
    return-wide v0

    .line 486
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 489
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    goto :goto_0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 501
    const-wide/16 v0, 0x0

    .line 503
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getIMSIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 709
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    if-ltz v0, :cond_0

    .line 710
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->index:I

    return v0

    .line 712
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "IMS connection index not assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 532
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v4, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    if-gt v3, v4, :cond_2

    .line 536
    :cond_0
    const-string v1, ""

    .line 550
    :cond_1
    :goto_0
    return-object v1

    .line 539
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, subStr:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 541
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 542
    .local v2, wIndex:I
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 544
    .local v0, pIndex:I
    if-lez v2, :cond_4

    if-lt v2, v0, :cond_3

    if-gtz v0, :cond_4

    .line 545
    :cond_3
    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 546
    :cond_4
    if-lez v0, :cond_1

    .line 547
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 603
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 604
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 606
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->hangup(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 565
    return-void

    .line 563
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    return v0
.end method

.method public isThrwayCall()Z
    .locals 1

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isThrwayCall:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 280
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    .line 790
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTimeReal:J

    .line 791
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->duration:J

    .line 793
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 801
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isIncoming:Z

    if-nez v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->processNextPostDialChar()V

    .line 805
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    .line 807
    return-void
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .locals 3
    .parameter "disconnectCauseFromCode"

    .prologue
    .line 730
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 734
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 735
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->doDisconnect()V

    .line 736
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMSConn] onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;->connectionDisconnected(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    .line 746
    return-void
.end method

.method public onHangupLocal()V
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 722
    return-void
.end method

.method public onLocalDisconnect()V
    .locals 2

    .prologue
    .line 681
    const-string v0, "IMSConnection"

    const-string v1, "[IMSConn] onLoalDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 684
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->doDisconnect()V

    .line 685
    const-string v0, "IMSConnection"

    const-string v1, "[IMSConn] onLoalDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    .line 694
    return-void
.end method

.method public onRemoteDisconnect(I)V
    .locals 1
    .parameter "causeCode"

    .prologue
    .line 725
    iput p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mCallFailCause:I

    .line 726
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/IMSConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 727
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 590
    const-string v0, "IMSConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :goto_0
    return-void

    .line 595
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .parameter "str"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 618
    const-string v1, "IMSConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    return-void

    .line 623
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 651
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    .line 653
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public processNextPostDialChar()V
    .locals 9

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 187
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 194
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 197
    const/4 v1, 0x0

    .line 216
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/ims/IMSCallTracker;->phone:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/ims/IMSPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 220
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 223
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 224
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 225
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 226
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 229
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 231
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 201
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 203
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 205
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->processPostDialChar(C)Z

    move-result v2

    .line 207
    .local v2, isValid:Z
    if-nez v2, :cond_3

    .line 209
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 211
    const-string v6, "IMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processPostDialChar(C)Z
    .locals 5
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 239
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 257
    :goto_0
    return v0

    .line 241
    :cond_0
    const/16 v1, 0x2c

    if-ne p1, v1, :cond_1

    .line 242
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 249
    :cond_1
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_2

    .line 250
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 251
    :cond_2
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_3

    .line 252
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ims/IMSConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 254
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "IMSConnection"

    const-string/jumbo v2, "releaseWakeLock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 178
    :cond_0
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->disconnected:Z

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSConnection;->owner:Lcom/android/internal/telephony/ims/IMSCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ims/IMSCallTracker;->separate(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 677
    return-void

    .line 674
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->acquireWakeLock()V

    .line 267
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 276
    return-void

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->releaseWakeLock()V

    goto :goto_0
.end method

.method public setThrwayCall(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 931
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->isThrwayCall:Z

    .line 932
    return-void
.end method

.method public update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .parameter "dc"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 838
    const/4 v0, 0x0

    .line 839
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 840
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    move v4, v5

    .line 842
    .local v4, wasHolding:Z
    :goto_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/ims/IMSConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/ims/IMSCall;

    move-result-object v1

    .line 844
    .local v1, newParent:Lcom/android/internal/telephony/ims/IMSCall;
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/internal/telephony/ims/IMSConnection;->equalsHandlesNulls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 845
    const-string/jumbo v7, "update: phone # changed!"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 846
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->address:Ljava/lang/String;

    .line 847
    const/4 v0, 0x1

    .line 851
    :cond_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 852
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 853
    const/4 v0, 0x1

    .line 854
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    .line 861
    :cond_1
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds----"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 862
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapNamePresentation:I

    .line 863
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->numberPresentation:I

    .line 865
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eq v1, v7, :cond_7

    .line 866
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eqz v7, :cond_2

    .line 867
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 869
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/ims/IMSCall;->attach(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)V

    .line 870
    iput-object v1, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 871
    const/4 v0, 0x1

    .line 880
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update: parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasNewParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    if-eq v1, v8, :cond_a

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ims/IMSConnection;->log(Ljava/lang/String;)V

    .line 889
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_3

    .line 890
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->onConnectedInOrOut()V

    .line 893
    :cond_3
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    .line 895
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/IMSConnection;->onStartedHolding()V

    .line 898
    :cond_4
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/ims/IMSCall;
    .end local v4           #wasHolding:Z
    :cond_5
    move v4, v6

    .line 840
    goto/16 :goto_0

    .line 856
    .restart local v1       #newParent:Lcom/android/internal/telephony/ims/IMSCall;
    .restart local v4       #wasHolding:Z
    :cond_6
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 857
    const/4 v0, 0x1

    .line 858
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->cnapName:Ljava/lang/String;

    goto/16 :goto_1

    .line 874
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/ims/IMSCall;->update(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 875
    .local v2, parentStateChange:Z
    if-nez v0, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    move v0, v5

    :goto_4
    goto/16 :goto_2

    :cond_9
    move v0, v6

    goto :goto_4

    .end local v2           #parentStateChange:Z
    :cond_a
    move v5, v6

    .line 880
    goto :goto_3
.end method

.method public updateParent(Lcom/android/internal/telephony/ims/IMSCall;Lcom/android/internal/telephony/ims/IMSCall;)V
    .locals 1
    .parameter "oldParent"
    .parameter "newParent"

    .prologue
    .line 920
    if-eq p2, p1, :cond_1

    .line 921
    if-eqz p1, :cond_0

    .line 922
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/ims/IMSCall;->detach(Lcom/android/internal/telephony/ims/IMSConnection;)V

    .line 924
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p2, p0, v0}, Lcom/android/internal/telephony/ims/IMSCall;->attachFake(Lcom/android/internal/telephony/ims/IMSConnection;Lcom/android/internal/telephony/Call$State;)V

    .line 925
    iput-object p2, p0, Lcom/android/internal/telephony/ims/IMSConnection;->parent:Lcom/android/internal/telephony/ims/IMSCall;

    .line 927
    :cond_1
    return-void
.end method

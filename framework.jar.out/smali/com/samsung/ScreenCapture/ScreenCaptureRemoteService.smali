.class public Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;
.super Landroid/app/Service;
.source "ScreenCaptureRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;
    }
.end annotation


# static fields
.field public static final ACTION_START_SCREENCAPTURE:Ljava/lang/String; = "com.samsung.ScreenCapture.ScreenCaptureRemoteService"

.field private static final NOTIFICATION_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ScreenCaptureRemoteService"

.field private static m_bAlive:Z


# instance fields
.field private mFrameType:I

.field private final mSCBinder:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->m_bAlive:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->mFrameType:I

    .line 47
    new-instance v0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$1;

    invoke-direct {v0, p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$1;-><init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;)V

    iput-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->mSCBinder:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->mFrameType:I

    return v0
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->m_bAlive:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .parameter "arg0"

    .prologue
    .line 65
    const-string v2, "ScreenCaptureRemoteService"

    const-string v3, "Bind!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, -0x1

    .line 68
    .local v1, frametype:I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, ext:Landroid/os/Bundle;
    const-string v2, "frameType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 71
    const-string v2, "ScreenCaptureRemoteService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrameType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->mFrameType:I

    .line 80
    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->mFrameType:I

    invoke-static {v2}, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->startCapture(I)Z

    .line 82
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->m_bAlive:Z

    .line 84
    iget-object v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->mSCBinder:Lcom/samsung/ScreenCapture/IScreenCaptureRemoteService$Stub;

    return-object v2
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 101
    const-string v0, "ScreenCaptureRemoteService"

    const-string v1, "create ScreenCapture RemoteService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "ScreenCaptureRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "ScreenCaptureRemoteService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 108
    const-string v0, "ScreenCaptureRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 90
    const-string v0, "ScreenCaptureRemoteService"

    const-string/jumbo v1, "unBind!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->stopCapture()Z

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->m_bAlive:Z

    .line 95
    sget-boolean v0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;->m_bAlive:Z

    return v0
.end method

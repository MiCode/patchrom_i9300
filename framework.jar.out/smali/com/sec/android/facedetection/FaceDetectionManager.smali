.class public Lcom/sec/android/facedetection/FaceDetectionManager;
.super Ljava/lang/Object;
.source "FaceDetectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;
    }
.end annotation


# static fields
.field public static final FACESERVICE_DISABLED:Ljava/lang/String; = "faceservice_disabled"

.field public static final FACESERVICE_ENABLED:Ljava/lang/String; = "faceservice_enabled"

.field public static final FACE_SERVICE:Ljava/lang/String; = "samsung.facedetection_service"

.field private static final TAG:Ljava/lang/String; = "FaceDetectionManager"


# instance fields
.field private mClient:Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;

.field private mService:Lcom/sec/android/facedetection/IFaceDetectionService;


# direct methods
.method public constructor <init>(Lcom/sec/android/facedetection/IFaceDetectionService;)V
    .locals 1
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mService:Lcom/sec/android/facedetection/IFaceDetectionService;

    .line 30
    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mClient:Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;

    .line 51
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mService:Lcom/sec/android/facedetection/IFaceDetectionService;

    .line 52
    new-instance v0, Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;

    invoke-direct {v0, p0}, Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;-><init>(Lcom/sec/android/facedetection/FaceDetectionManager;)V

    iput-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mClient:Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;

    .line 53
    return-void
.end method

.method public static getFaceDetectionManager()Lcom/sec/android/facedetection/FaceDetectionManager;
    .locals 5

    .prologue
    .line 37
    const-string/jumbo v3, "samsung.facedetection_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 39
    const-string v3, "FaceDetectionManager"

    const-string v4, "Fail binding the service; facedetection service may not be running properly."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :cond_0
    invoke-static {v0}, Lcom/sec/android/facedetection/IFaceDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/facedetection/IFaceDetectionService;

    move-result-object v2

    .line 44
    .local v2, service:Lcom/sec/android/facedetection/IFaceDetectionService;
    new-instance v1, Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-direct {v1, v2}, Lcom/sec/android/facedetection/FaceDetectionManager;-><init>(Lcom/sec/android/facedetection/IFaceDetectionService;)V

    .line 45
    .local v1, fm:Lcom/sec/android/facedetection/FaceDetectionManager;
    const-string v3, "FaceDetectionManager"

    const-string v4, "A new instance of FaceDetectionManager is created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mService:Lcom/sec/android/facedetection/IFaceDetectionService;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mClient:Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;

    invoke-interface {v1, v2}, Lcom/sec/android/facedetection/IFaceDetectionService;->disable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mService:Lcom/sec/android/facedetection/IFaceDetectionService;

    iget-object v2, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mClient:Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;

    invoke-interface {v1, v2}, Lcom/sec/android/facedetection/IFaceDetectionService;->enable(Lcom/sec/android/facedetection/IFaceDetectionClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFaceInfo()[Lcom/sec/android/facedetection/SecFace;
    .locals 2

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mService:Lcom/sec/android/facedetection/IFaceDetectionService;

    invoke-interface {v1}, Lcom/sec/android/facedetection/IFaceDetectionService;->getFaceInfo()[Lcom/sec/android/facedetection/SecFace;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 83
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFaceInfo(II)[Lcom/sec/android/facedetection/SecFace;
    .locals 2
    .parameter "last"
    .parameter "current"

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionManager;->mService:Lcom/sec/android/facedetection/IFaceDetectionService;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/facedetection/IFaceDetectionService;->getFaceInfoHint(II)[Lcom/sec/android/facedetection/SecFace;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

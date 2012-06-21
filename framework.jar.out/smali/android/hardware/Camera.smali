.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_PRIORITY_DIED:I = 0xc8

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = 0x4ff

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mNativeContext:I

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>(II)V
    .locals 3
    .parameter "cameraId"
    .parameter "priority"

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 333
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 334
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 335
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 336
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 337
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 338
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 341
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 342
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 349
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;II)V

    .line 350
    return-void

    .line 343
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 346
    :cond_1
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    return-void
.end method

.method static synthetic access$1302(Landroid/hardware/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return p1
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 696
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 703
    return-void
.end method

.method public static checkCameraEnabled()Z
    .locals 5

    .prologue
    .line 247
    const/4 v1, 0x1

    .line 249
    .local v1, enabled:Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 251
    .local v2, rp:Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    .end local v2           #rp:Landroid/sec/enterprise/RestrictionPolicy;
    :goto_0
    if-nez v1, :cond_1

    .line 259
    const-string v3, "Camera"

    const-string v4, "CAMERA IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x1869f

    if-gt v3, v4, :cond_1

    .line 263
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 264
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 268
    :cond_1
    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static native getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method public static native getNumberOfCameras()I
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;II)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 5

    .prologue
    .line 319
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 321
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 322
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 323
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 324
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 325
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 326
    new-instance v3, Landroid/hardware/Camera;

    const/16 v4, 0x64

    invoke-direct {v3, v1, v4}, Landroid/hardware/Camera;-><init>(II)V

    .line 329
    :goto_1
    return-object v3

    .line 323
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 301
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 303
    new-instance v0, Landroid/hardware/Camera;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 803
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 804
    .local v0, c:Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 808
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 809
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 647
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 648
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .parameter "callbackBuffer"

    .prologue
    .line 690
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 691
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 884
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 885
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 886
    return-void
.end method

.method public final cancelAutoFocus()V
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 900
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 901
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 354
    return-void
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 1363
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 1364
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 1365
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 1366
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 368
    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 1338
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 1339
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1142
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1143
    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 582
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 583
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 584
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 585
    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 586
    return-void

    :cond_0
    move v0, v1

    .line 585
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1352
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 1353
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 564
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 565
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 566
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 569
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 570
    return-void

    :cond_0
    move v0, v1

    .line 569
    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 611
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 612
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 613
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 614
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 615
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 452
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1115
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1116
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 1178
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 1179
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1181
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1182
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1183
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 1191
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1192
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1193
    return-void
.end method

.method public final stopPreview()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 537
    iput-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 538
    iput-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 539
    iput-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 540
    iput-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 541
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 542
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 945
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 946
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 980
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 981
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 982
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 983
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, msgType:I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 988
    or-int/lit8 v0, v0, 0x2

    .line 990
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 991
    or-int/lit16 v0, v0, 0x80

    .line 993
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 994
    or-int/lit8 v0, v0, 0x40

    .line 996
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 997
    or-int/lit16 v0, v0, 0x100

    .line 1000
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1001
    return-void
.end method

.method public final native unlock()V
.end method

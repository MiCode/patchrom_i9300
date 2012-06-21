.class public Lcom/samsung/ScreenCapture/ScreenCaptureNative;
.super Ljava/lang/Object;
.source "ScreenCaptureNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenCaptureNative"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->mContext:Landroid/content/Context;

    .line 40
    const-string/jumbo v0, "samsung_psi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v0, "SCREENCAPTURE_ENGINE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callbackFromNative(IILjava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "len"
    .parameter "obj"

    .prologue
    .line 30
    if-eqz p2, :cond_0

    .line 31
    instance-of v0, p2, [B

    if-eqz v0, :cond_0

    .line 32
    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    .line 36
    :cond_0
    return-void
.end method

.method public static native getFrame()[B
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    sput-object p0, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static startCapture(I)Z
    .locals 2
    .parameter "frameType"

    .prologue
    .line 16
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-static {v0, v1, p0}, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->startCapture(III)Z

    move-result v0

    return v0
.end method

.method public static native startCapture(III)Z
.end method

.method public static native stopCapture()Z
.end method

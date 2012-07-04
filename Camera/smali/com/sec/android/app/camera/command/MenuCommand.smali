.class public abstract Lcom/sec/android/app/camera/command/MenuCommand;
.super Ljava/lang/Object;
.source "MenuCommand.java"


# instance fields
.field protected mAnchor:Lcom/sec/android/glview/TwGLImage;

.field protected mLaunchX:F

.field protected mLaunchY:F

.field protected mZOrder:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    return-void
.end method


# virtual methods
.method public abstract execute()V
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .locals 0
    .parameter "anchor"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 34
    return-void
.end method

.method public setLaunchPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchX:F

    .line 38
    iput p2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mLaunchY:F

    .line 39
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .parameter "zOrder"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    .line 43
    return-void
.end method

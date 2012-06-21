.class public interface abstract Landroid/sec/multiwindow/IMultiWindowManager;
.super Ljava/lang/Object;
.source "IMultiWindowManager.java"


# static fields
.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "multiwindow"


# virtual methods
.method public abstract arrangeWindows(I)Z
.end method

.method public abstract capture(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
.end method

.method public abstract exchangeSplitScreens()Z
.end method

.method public abstract finishAllWindow()Z
.end method

.method public abstract finishAppPid(I)Z
.end method

.method public abstract getMultiLayout()Z
.end method

.method public abstract getMultiWindowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiWindowList(Landroid/content/ComponentName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;
.end method

.method public abstract getPinupWindow()Landroid/content/ComponentName;
.end method

.method public abstract getResumedWindow()Landroid/content/ComponentName;
.end method

.method public abstract getRunningWindowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVisibleWindowList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
.end method

.method public abstract getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;
.end method

.method public abstract isMultiWindow(Landroid/content/ComponentName;)Z
.end method

.method public abstract isPermissionOff()Z
.end method

.method public abstract isRunning(Landroid/content/ComponentName;)Z
.end method

.method public abstract isVisible(Landroid/content/ComponentName;)Z
.end method

.method public abstract notifyFinished(Landroid/app/Activity;)Z
.end method

.method public abstract notifyForceFinished(Landroid/content/ComponentName;)Z
.end method

.method public abstract notifySIP(I)Z
.end method

.method public abstract notifyStarted(Landroid/app/Activity;)Z
.end method

.method public abstract orientationChangeRestore(Landroid/content/ComponentName;I)Z
.end method

.method public abstract postResume(Landroid/app/Activity;)Z
.end method

.method public abstract registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
.end method

.method public abstract registerMultiWindow(Landroid/content/ComponentName;II)Landroid/sec/multiwindow/IMultiWindow;
.end method

.method public abstract registerMultiWindow(Landroid/content/ComponentName;IIZ)Landroid/sec/multiwindow/IMultiWindow;
.end method

.method public abstract registerMultiWindow(Landroid/content/ComponentName;Ljava/util/List;)Landroid/sec/multiwindow/IMultiWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/sec/multiwindow/IMultiWindow;"
        }
    .end annotation
.end method

.method public abstract registerMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
.end method

.method public abstract removeMultiWindow(Landroid/content/ComponentName;)Z
.end method

.method public abstract removeMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
.end method

.method public abstract resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
.end method

.method public abstract screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
.end method

.method public abstract sendCreateAction(Landroid/app/Activity;)Z
.end method

.method public abstract sendDestroyAction(Landroid/app/Activity;)Z
.end method

.method public abstract sendFinishAction(Landroid/app/Activity;)Z
.end method

.method public abstract sendPauseAction(Landroid/app/Activity;)Z
.end method

.method public abstract sendResumeAction(Landroid/app/Activity;)Z
.end method

.method public abstract sendStartAction(Landroid/app/Activity;)Z
.end method

.method public abstract setMultiLayout(Z)Z
.end method

.method public abstract setMultiWindowMode(Landroid/sec/multiwindow/MultiWindowType;)Z
.end method

.method public abstract startLauncher()Z
.end method

.method public abstract startLauncher(Landroid/content/ComponentName;)Z
.end method

.method public abstract startLauncher(Landroid/content/Context;)Z
.end method

.method public abstract startLauncher(Landroid/content/Context;Landroid/content/ComponentName;)Z
.end method

.method public abstract startSplitScreens(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
.end method

.method public abstract startSplitScreens(Landroid/content/ComponentName;Landroid/content/Intent;)Z
.end method

.method public abstract startSplitScreens(Landroid/content/Intent;Landroid/content/ComponentName;)Z
.end method

.method public abstract startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
.end method

.method public abstract unRegisterMultiWindow(Landroid/content/ComponentName;)Z
.end method

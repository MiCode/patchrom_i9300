.class public Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirm;
.super Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;
.source "AutoPowerOnOffConfirm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 38
    const-string v0, "AutoPowerConfirm"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "AutoPowerConfirm"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-super {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->onStop()V

    .line 47
    return-void
.end method

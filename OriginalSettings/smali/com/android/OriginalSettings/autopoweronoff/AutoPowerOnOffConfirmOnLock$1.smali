.class Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;
.super Landroid/os/CountDownTimer;
.source "AutoPowerOnOffConfirmOnLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    iget-object v1, v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 123
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 125
    const/4 v1, 0x0

    sput-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, shutdown:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    iget-object v1, v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    .line 133
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .parameter "millisUntilFinished"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->this$0:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    #calls: Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->updateText(J)V
    invoke-static {v0, p1, p2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;J)V

    .line 114
    return-void
.end method

.class public Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;
.super Lcom/android/internal/app/AlertActivity;
.source "AutoPowerOnOffConfirmOnLock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static contentIntent:Landroid/app/PendingIntent;

.field static isTurningOff:Z

.field static mCountdownTimer:Landroid/os/CountDownTimer;

.field static mconfirmText:Landroid/widget/TextView;

.field static notification:Landroid/app/Notification;

.field static pm:Landroid/os/PowerManager;

.field static remainMilliSeconds:J

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private isAlarming:Z

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isAlarming:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->updateText(J)V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 7

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040010

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mconfirmText:Landroid/widget/TextView;

    .line 163
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mconfirmText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v4, 0x7f0d09d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v4, 0x7f0d09d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-object v0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 226
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private updateText(J)V
    .locals 12
    .parameter "remainMillis"

    .prologue
    const-wide/16 v10, 0x7530

    const-wide/16 v3, 0x0

    const v9, 0x7f0d09d3

    const v6, 0x7f0d09d2

    const-wide/16 v7, 0x3e8

    .line 210
    sub-long v1, p1, v7

    sput-wide v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    .line 211
    sget-wide v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 212
    sput-wide v3, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    .line 217
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mconfirmText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v4, 0x7f0d09d4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 221
    invoke-direct {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 222
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    sget-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 223
    return-void

    .line 213
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_1
    sget-wide v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_0

    .line 214
    sput-wide v10, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 169
    packed-switch p2, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 172
    :pswitch_0
    sget-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_0

    .line 173
    sget-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 174
    sput-object v3, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, shutdown:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->startActivity(Landroid/content/Intent;)V

    .line 183
    sput-boolean v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    goto :goto_0

    .line 189
    .end local v1           #shutdown:Landroid/content/Intent;
    :pswitch_1
    sget-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    .line 190
    sget-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 191
    sput-object v3, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 194
    :cond_1
    sget-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_2

    .line 195
    sget-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 196
    sput-object v3, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 200
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 202
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 203
    sput-boolean v4, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    .line 204
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->finish()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    const v10, 0x7f0d09d4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->pm:Landroid/os/PowerManager;

    .line 79
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->pm:Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "AutoPowerOffConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->requestWindowFeature(I)Z

    .line 87
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 88
    const v1, 0x280080

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 95
    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 96
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 97
    invoke-direct {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 98
    const v1, 0x7f0d09d5

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 99
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    const v1, 0x7f0d09d6

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 101
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->setupAlert()V

    .line 105
    sput-boolean v8, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    .line 110
    new-instance v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;

    const-wide/16 v2, 0x7d00

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;JJ)V

    invoke-virtual {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 137
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 138
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0200ea

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v2, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    .line 142
    const-class v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirm;

    .line 143
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 145
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-class v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    .line 151
    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    const-string v1, "fromNotificationManager"

    invoke-virtual {v2, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sput-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->contentIntent:Landroid/app/PendingIntent;

    .line 154
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v8, 0x7f0d09d2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v7, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->remainMilliSeconds:J

    div-long v4, v7, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    const v6, 0x7f0d09d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 157
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 158
    return-void

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 236
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 237
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 238
    sput-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 241
    :cond_0
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 242
    sget-object v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 243
    sput-object v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 247
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 249
    iget-object v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 250
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    .line 253
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 261
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 270
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 272
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 275
    :cond_0
    sget-boolean v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    if-nez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 278
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->isTurningOff:Z

    .line 279
    return-void
.end method

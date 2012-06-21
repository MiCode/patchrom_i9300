.class public Lcom/android/internal/policy/impl/CircleMissedEventWidget;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$5;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallMsg:Landroid/widget/LinearLayout;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mTouchListerner:Landroid/view/View$OnTouchListener;

.field private mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 5
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->DEBUG:Z

    .line 55
    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    .line 56
    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 57
    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    .line 63
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MISSED_EVENT_UPDATE:I

    .line 64
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    .line 65
    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->REQ_INDEX_MSG:I

    .line 67
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    .line 68
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    .line 81
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    .line 84
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    .line 99
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 101
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 104
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090056

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setGravity(I)V

    .line 111
    const v2, 0x10202f1

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    .line 112
    const v2, 0x10202f4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 113
    const v2, 0x10202f0

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    .line 116
    const v2, 0x10202f3

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    .line 117
    const v2, 0x10202f6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 121
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    .line 133
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mTouchListerner:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$3;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget$4;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    .line 192
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 193
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 195
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidget;Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 292
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 295
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_3

    .line 296
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 303
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_5

    .line 304
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 297
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_4

    .line 298
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 299
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_2

    .line 300
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 306
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 307
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    .line 228
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 325
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 327
    :try_start_0
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :cond_1
    :goto_1
    return-void

    .line 319
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_0

    .line 320
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 8

    .prologue
    const/16 v7, 0x3e7

    .line 248
    const/4 v2, 0x0

    .line 249
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 250
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 251
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 253
    .local v1, bUpdatedMsgCount:Z
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I

    move-result v2

    .line 254
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidget$NotiMode;)I

    move-result v3

    .line 256
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-eq v2, v4, :cond_3

    if-ltz v2, :cond_3

    .line 257
    const/4 v0, 0x1

    .line 258
    if-le v2, v7, :cond_2

    .line 259
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    .line 266
    :goto_0
    const-string v4, "CircleMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-eq v3, v4, :cond_5

    if-ltz v2, :cond_5

    .line 269
    const/4 v1, 0x1

    .line 270
    if-le v3, v7, :cond_4

    .line 271
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    .line 278
    :goto_1
    const-string v4, "CircleMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 281
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 285
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedIcons()V

    .line 286
    return-void

    .line 261
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    goto/16 :goto_0

    .line 263
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 273
    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    goto :goto_1

    .line 275
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMissedIcons()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 199
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_0

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedCallAndMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->invalidate()V

    .line 224
    return-void

    .line 206
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v0, :cond_1

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    .line 212
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v0, :cond_2

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->setVisibility(I)V

    .line 220
    sget-object v0, Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidget$UnlockMode;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 232
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    return-void
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 336
    const-string v0, ""

    .line 337
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040608

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, swipeMsg:Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-lez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040604

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    const-string v2, "CircleMissedEventWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTS Message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 340
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-le v2, v6, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040602

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-le v2, v6, :cond_2

    .line 343
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040603

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedCallCount:I

    if-ne v2, v6, :cond_3

    .line 345
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040600

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mMissedMsgCount:I

    if-ne v2, v6, :cond_4

    .line 347
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040601

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->mContext:Landroid/content/Context;

    const v3, 0x10405ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->updateMissedEvent()V

    .line 245
    return-void
.end method

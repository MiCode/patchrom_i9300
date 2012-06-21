.class public Lcom/android/internal/policy/impl/LockscreenHelpOverlay;
.super Landroid/widget/RelativeLayout;
.source "LockscreenHelpOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;,
        Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "LockscreenHelpOverlay"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private final MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private final SCREEN_UPDATE:I

.field deviceDpi:I

.field private gestureImageArray:[I

.field private mBottomPadding:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mChecked:I

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mGestureImage:Landroid/widget/ImageView;

.field private mGestureLayout:Landroid/widget/RelativeLayout;

.field private mGestureText:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/Button;

.field private mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;

.field mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

.field private mLeftPadding:I

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedMsgCount:I

.field private mShortcutItemNum:I

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mWhichTip:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;II)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "helpCallback"
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/16 v4, 0x12c2

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->MISSED_EVENT_UPDATE:I

    .line 64
    const/16 v4, 0x12c3

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->SCREEN_UPDATE:I

    .line 65
    iput v7, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->REQ_INDEX_CALL_EMAIL:I

    .line 66
    const/16 v4, 0x7b

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->REQ_INDEX_MSG:I

    .line 68
    iput v6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    .line 69
    iput v6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    .line 74
    const-string v4, "com.android.phone"

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->CALL_PKG:Ljava/lang/String;

    .line 75
    const-string v4, "com.android.mms"

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->MSG_PKG:Ljava/lang/String;

    .line 76
    const-string v4, "com.android.email"

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->EMAIL_PKG:Ljava/lang/String;

    .line 90
    iput v6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBottomPadding:I

    .line 91
    iput v6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mLeftPadding:I

    .line 99
    new-instance v4, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$1;-><init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 116
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;

    .line 117
    iput p4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    .line 118
    iput p5, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 121
    .local v2, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCreationOrientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 123
    const v4, 0x1090063

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    :goto_0
    const-string v4, "ro.build.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    sput-boolean v7, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    .line 135
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 137
    .local v3, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->deviceDpi:I

    .line 139
    sget-boolean v4, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "LockscreenHelpOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceDpi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->deviceDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    sget-boolean v4, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "LockscreenHelpOverlay"

    const-string v5, "LockscreenHelpOverlay"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    const v4, 0x102031b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    .line 143
    const v4, 0x102031c

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    .line 144
    const v4, 0x1020019

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpButton:Landroid/widget/Button;

    .line 145
    const v4, 0x1020319

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureLayout:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setGestureImageArray()V

    .line 150
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->updateMissedEvent()V

    .line 152
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v4, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    new-instance v4, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$2;-><init>(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    sget-boolean v4, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "LockscreenHelpOverlay"

    const-string v5, "Broadcast register"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    sget-boolean v4, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "LockscreenHelpOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_3
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setWhichHelpInfo(II)V

    .line 176
    return-void

    .line 126
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #mWindowManager:Landroid/view/WindowManager;
    :cond_4
    const v4, 0x1090064

    invoke-virtual {v2, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 132
    :cond_5
    sput-boolean v6, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockscreenHelpOverlay;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 312
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v1

    .line 315
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_4

    .line 316
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 323
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_6

    .line 324
    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 317
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_5

    .line 318
    const-string v2, "com.android.mms"

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 319
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_2

    .line 320
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 326
    :cond_6
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-eq p1, v2, :cond_7

    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 327
    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->updateMissedEvent()V

    .line 286
    return-void
.end method

.method private setGestureImageArray()V
    .locals 7

    .prologue
    const v6, 0x10805e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    .line 180
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCreationOrientation:I

    if-eq v0, v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805dc

    aput v1, v0, v4

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805df

    aput v1, v0, v5

    .line 183
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805e2

    aput v1, v0, v2

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805e5

    aput v1, v0, v3

    .line 198
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    aput v6, v0, v2

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    aput v6, v0, v3

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805dd

    aput v1, v0, v4

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805e0

    aput v1, v0, v5

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805e3

    aput v1, v0, v2

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    const v1, 0x10805e6

    aput v1, v0, v3

    goto :goto_0
.end method

.method private updateMissedEvent()V
    .locals 5

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, nCallCount:I
    const/4 v1, 0x0

    .line 292
    .local v1, nMsgCount:I
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;)I

    move-result v0

    .line 293
    sget-object v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getNumMissedEvent(Lcom/android/internal/policy/impl/LockscreenHelpOverlay$NotiMode;)I

    move-result v1

    .line 295
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    if-eq v0, v2, :cond_0

    if-ltz v0, :cond_0

    .line 296
    iput v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    .line 299
    :cond_0
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    if-eq v1, v2, :cond_2

    if-ltz v1, :cond_2

    .line 302
    iput v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    .line 305
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "LockscreenHelpOverlay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_3
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 346
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onCleanUp() Broadcast unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;

    .line 350
    return-void
.end method

.method public getWhichTip()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 371
    :goto_0
    return-void

    .line 365
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setHelpLayoutFlag()V

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;->dismissed()V

    .line 368
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 339
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mHelpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay$HelpOverlayCallback;->dismissed()V

    .line 341
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 334
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setWhichHelpInfo()V

    .line 336
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public setHelpLayoutFlag()V
    .locals 5

    .prologue
    .line 272
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    const-wide/high16 v1, 0x4024

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    .line 273
    sget-boolean v0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockscreenHelpOverlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChekced() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "help_overlay_checked"

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 275
    return-void
.end method

.method public setPaddingForShorcutGesture()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 201
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "information_ticker"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 203
    .local v0, isTickerOn:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050054

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 204
    .local v1, shortcutPadding:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 206
    .local v2, shortcutWidth:I
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->deviceDpi:I

    mul-int/lit8 v3, v3, 0x40

    div-int/lit16 v3, v3, 0xa0

    iput v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBottomPadding:I

    .line 210
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    if-lez v3, :cond_1

    .line 211
    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    rsub-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mLeftPadding:I

    .line 213
    :cond_1
    return-void

    .end local v0           #isTickerOn:Z
    .end local v1           #shortcutPadding:I
    .end local v2           #shortcutWidth:I
    :cond_2
    move v0, v3

    .line 201
    goto :goto_0
.end method

.method public setWhichHelpInfo()V
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mChecked:I

    iget v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mShortcutItemNum:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setWhichHelpInfo(II)V

    .line 218
    return-void
.end method

.method public setWhichHelpInfo(II)V
    .locals 9
    .parameter "checked"
    .parameter "shortcutItemNum"

    .prologue
    const v8, 0x1040669

    const/4 v7, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 221
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 223
    .local v0, mShowingNumber:I
    :goto_0
    sget-boolean v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "LockscreenHelpOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    rem-int/lit8 v3, p1, 0xa

    if-ge v3, v0, :cond_3

    .line 226
    iput v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    .line 227
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    const v2, 0x1040667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    .line 269
    :cond_1
    :goto_1
    return-void

    .end local v0           #mShowingNumber:I
    :cond_2
    move v0, v2

    .line 221
    goto :goto_0

    .line 233
    .restart local v0       #mShowingNumber:I
    :cond_3
    div-int/lit8 p1, p1, 0xa

    .line 236
    rem-int/lit8 v2, p1, 0xa

    if-ge v2, v0, :cond_4

    if-lez p2, :cond_4

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setPaddingForShorcutGesture()V

    .line 238
    iput v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    .line 239
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    const v2, 0x1040668

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 240
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mLeftPadding:I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mBottomPadding:I

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 242
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_1

    .line 246
    :cond_4
    div-int/lit8 p1, p1, 0xa

    .line 249
    iget v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedCallCount:I

    if-lez v1, :cond_5

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_5

    .line 250
    iput v7, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 254
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_1

    .line 258
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mMissedMsgCount:I

    if-lez v1, :cond_6

    rem-int/lit8 v1, p1, 0xa

    if-ge v1, v0, :cond_6

    .line 259
    iput v7, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    .line 260
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->gestureImageArray:[I

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mGestureImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 263
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->setVisibility(I)V

    goto :goto_1

    .line 267
    :cond_6
    iput v6, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    .line 268
    sget-boolean v1, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LockscreenHelpOverlay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWhichTip = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;->mWhichTip:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

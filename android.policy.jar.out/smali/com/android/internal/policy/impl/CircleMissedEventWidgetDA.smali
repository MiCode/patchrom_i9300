.class public Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$6;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;
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

.field mIsLiveWallpaper:Z

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallBackground:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallIcon:Landroid/widget/ImageView;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgBackground:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgIcon:Landroid/widget/ImageView;

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mUpperLayout:Landroid/widget/RelativeLayout;

.field private mWaterlockHelpText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->DEBUG:Z

    .line 60
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->CALL_PKG:Ljava/lang/String;

    .line 62
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 64
    const-string v3, "com.android.email"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->EMAIL_PKG:Ljava/lang/String;

    .line 71
    const/16 v3, 0x12c2

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MISSED_EVENT_UPDATE:I

    .line 73
    iput v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->REQ_INDEX_CALL_EMAIL:I

    .line 75
    const/16 v3, 0x7b

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->REQ_INDEX_MSG:I

    .line 77
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 79
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 115
    sget-object v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    .line 119
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$1;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    .line 137
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 139
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 142
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 145
    .local v2, orientation:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 146
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "portrait mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const v3, 0x1090057

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 160
    :goto_0
    const v3, 0x10202f8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    .line 162
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 165
    const v3, 0x10202f2

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    .line 166
    const v3, 0x10202f5

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    .line 170
    const v3, 0x10202f9

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    .line 171
    const v3, 0x10202fa

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    .line 173
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 178
    const v3, 0x10202f1

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    .line 179
    const v3, 0x10202f4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 180
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    const v3, 0x10202f3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    .line 186
    const v3, 0x10202f6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 187
    const v3, 0x10202f7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    .line 188
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_wallpaper"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    .line 197
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$3;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 313
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$5;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 333
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 334
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 336
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 337
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 338
    return-void

    .line 149
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "landscape mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const v3, 0x1090058

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    move v3, v5

    .line 191
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    return-object v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 438
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v1

    .line 442
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_3

    .line 443
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 450
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_5

    .line 452
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 444
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_4

    .line 445
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 446
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_2

    .line 447
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 455
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 458
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v3, v3, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 370
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V
    .locals 4
    .parameter "notiMode"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v1, :cond_2

    .line 468
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 477
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 479
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

    .line 480
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :cond_1
    :goto_1
    return-void

    .line 471
    :cond_2
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v1, :cond_0

    .line 472
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 481
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 8

    .prologue
    const/16 v7, 0x3e7

    .line 390
    const/4 v2, 0x0

    .line 391
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 392
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 393
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 395
    .local v1, bUpdatedMsgCount:Z
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v2

    .line 396
    sget-object v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v3

    .line 398
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-eq v2, v4, :cond_3

    .line 399
    const/4 v0, 0x1

    .line 400
    if-le v2, v7, :cond_2

    .line 401
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 408
    :goto_0
    const-string v4, "CircleMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

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

    .line 411
    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-eq v3, v4, :cond_5

    .line 412
    const/4 v1, 0x1

    .line 413
    if-le v3, v7, :cond_4

    .line 414
    iput v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 421
    :goto_1
    const-string v4, "CircleMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

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

    .line 424
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 430
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedIcons()V

    .line 431
    return-void

    .line 403
    :cond_2
    iput v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    goto/16 :goto_0

    .line 405
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 416
    :cond_4
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    goto :goto_1

    .line 418
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMissedIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 342
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v0, :cond_3

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 346
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->invalidate()V

    .line 366
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 361
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    return-void
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 488
    const-string v0, ""

    .line 490
    .local v0, TTSMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040604

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 507
    :goto_0
    const-string v1, "CircleMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS Message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v0

    .line 493
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v1, v5, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040602

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v1, v5, :cond_2

    .line 497
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040603

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 499
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v1, v5, :cond_3

    .line 500
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040600

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-ne v1, v5, :cond_4

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040601

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x10405ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTTSMessage(Z)Ljava/lang/String;
    .locals 9
    .parameter "isMissedCall"

    .prologue
    const v5, 0x1040600

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 514
    const-string v0, ""

    .line 515
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v4, 0x1040608

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, swipeMsg:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 518
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v3, v6, :cond_0

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x1040602

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 532
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 521
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_3

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0

    .line 525
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v3, v6, :cond_2

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x1040603

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0

    .line 528
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_3

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0

    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 532
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 380
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 385
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 387
    return-void
.end method

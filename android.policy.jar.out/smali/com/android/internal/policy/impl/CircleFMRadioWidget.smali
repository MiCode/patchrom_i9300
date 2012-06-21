.class public Lcom/android/internal/policy/impl/CircleFMRadioWidget;
.super Landroid/widget/RelativeLayout;
.source "CircleFMRadioWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleMediaWidget;


# static fields
.field private static final FMPLAYER_NEXT_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.next"

.field private static final FMPLAYER_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.off"

.field private static final FMPLAYER_ON:I = 0x1

.field private static final FMPLAYER_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.on"

.field private static final FMPLAYER_PREV_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.prev"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final RETURN_CHANNEL_CHANGE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.channel"

.field private static final RETURN_CHANNEL_TUNE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.channel"

.field private static final RETURN_FMPLAYER_INFO:Ljava/lang/String; = "com.android.fm.player_lock.info"

.field private static final RETURN_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.off"

.field private static final RETURN_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.on"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenFMRadioWidget"


# instance fields
.field private final DEBUG:Z

.field private final MSG_FMFREQ_UPDATE:I

.field private final MSG_FM_UPDATE:I

.field private final MSG_MINIRADIO_VISIBILITY_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STOP_MARQUEE:I

.field private final STOP_MARQUEE_DELAY:I

.field private currentAlbumID:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentChannel:Ljava/lang/String;

.field private mCurrentFreq:Ljava/lang/String;

.field private mFFLongPressed:Z

.field private mFMAppImage:Landroid/widget/ImageView;

.field private mFMInfoTextInMax:Landroid/widget/TextView;

.field private mFMInfoTextInMin:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsFMPlayerPlaying:Z

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mIsStopped:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxFMRadio:Landroid/widget/FrameLayout;

.field private mMinFMControllerHandle:Landroid/widget/LinearLayout;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mREWLongPressed:Z

.field private mScreenOn:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 6
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->DEBUG:Z

    .line 71
    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 80
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isMaxLayout:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mScreenOn:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsMoving:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 89
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    .line 90
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsFMPlayerPlaying:Z

    .line 91
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsStopped:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mWasShowed:Z

    .line 94
    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    .line 95
    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    .line 96
    iput-object v5, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->currentAlbumID:Ljava/lang/String;

    .line 102
    const/16 v3, 0x12c1

    iput v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->SHINK_ANIMATION_START:I

    .line 103
    const/16 v3, 0x12c2

    iput v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->MSG_FM_UPDATE:I

    .line 104
    const/16 v3, 0x12c3

    iput v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->MSG_FMFREQ_UPDATE:I

    .line 105
    const/16 v3, 0x12c4

    iput v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->STOP_MARQUEE:I

    .line 106
    const/16 v3, 0x12c5

    iput v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->MSG_MINIRADIO_VISIBILITY_UPDATE:I

    .line 108
    const/16 v3, 0x3e8

    iput v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->STOP_MARQUEE_DELAY:I

    .line 109
    iput v4, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I

    .line 114
    new-instance v3, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    .line 144
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 148
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 150
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 151
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090052

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 153
    const v3, 0x10202d4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.fm.player_lock.status.channel"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v3, "com.android.fm.player_lock.tune.channel"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v3, "com.android.fm.player_lock.status.on"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v3, "com.android.fm.player_lock.status.off"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    new-instance v3, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setFocusable(Z)V

    .line 207
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setFocusableInTouchMode(Z)V

    .line 208
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setDescendantFocusability(I)V

    .line 210
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 211
    .local v2, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v2}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsFMPlayerPlaying:Z

    .line 213
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->init()V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleFMRadioWidget;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/CircleFMRadioWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleFMRadioWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMaxLayout(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/CircleFMRadioWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/CircleFMRadioWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isTopLayout:Z

    return v0
.end method

.method private addMinTimer()V
    .locals 4

    .prologue
    .line 681
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 683
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 685
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "freq"
    .parameter "chname"

    .prologue
    const v3, 0x104060c

    .line 487
    const-string v0, ""

    .line 488
    .local v0, newTitleText:Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 491
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_1

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 289
    const v1, 0x10202dc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    .line 290
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 291
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 293
    const v1, 0x10202dd

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 297
    const v1, 0x10202d5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    .line 298
    const v1, 0x10202d7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    .line 299
    const v1, 0x10202d6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    .line 300
    const v1, 0x10202d8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    .line 303
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 304
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/internal/policy/impl/CircleFMRadioWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget$3;-><init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    new-instance v1, Lcom/android/internal/policy/impl/CircleFMRadioWidget$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget$4;-><init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 400
    const v1, 0x10202db

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/CircleFMRadioWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget$5;-><init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    const v1, 0x10202d9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 413
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/CircleFMRadioWidget$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget$6;-><init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v1, 0x10202da

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 427
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget$7;-><init>(Lcom/android/internal/policy/impl/CircleFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lockscreen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 446
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->resetMinTimer()V

    .line 447
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 449
    return-void
.end method

.method private removeMinTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x12c1

    .line 675
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 677
    :cond_0
    return-void
.end method

.method private resetMinTimer()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->removeMinTimer()V

    .line 690
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->addMinTimer()V

    .line 691
    return-void
.end method

.method private setMaxLayout(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 612
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 639
    :goto_0
    return-void

    .line 616
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isMaxLayout:Z

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 625
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 626
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->startTranslateAnimation(III)V

    .line 632
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 635
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 638
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->resetMinTimer()V

    goto :goto_0

    .line 628
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private setMinLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 644
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 648
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isMaxLayout:Z

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 657
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    .line 661
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_2

    .line 662
    iget v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->startTranslateAnimation(III)V

    .line 667
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 664
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private startTranslateAnimation(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 599
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsMoving:Z

    if-eqz v1, :cond_0

    .line 607
    :goto_0
    return-void

    .line 602
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 603
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 604
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 605
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 606
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 453
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->stopMarguee()V

    .line 458
    return-void
.end method

.method public getIsFMPlayerPlaying()Z
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsFMPlayerPlaying:Z

    .line 711
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsFMPlayerPlaying:Z

    return v0
.end method

.method protected handleFMUpdate(IILjava/lang/Object;)V
    .locals 6
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 225
    const-string v1, "GlassLockScreenFMRadioWidget"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMediaUpdate !! isPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsFMPlayerPlaying = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsFMPlayerPlaying:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    .line 227
    if-ne p2, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsStopped:Z

    .line 229
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 234
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 252
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 226
    goto :goto_0

    :cond_2
    move v1, v3

    .line 227
    goto :goto_1

    .line 241
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_4

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x10803eb

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 251
    :goto_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v2, 0x10803ef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x10803ea

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 245
    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_3
.end method

.method protected handleFMUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "freq"
    .parameter "chname"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 256
    if-nez p3, :cond_0

    .line 281
    :goto_0
    return-void

    .line 259
    :cond_0
    iput-object p4, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    .line 261
    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    .line 262
    if-ne p2, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsStopped:Z

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 269
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 261
    goto :goto_1

    :cond_3
    move v0, v2

    .line 262
    goto :goto_2

    .line 274
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 279
    :goto_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v1, 0x10803ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 277
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected handleMiniRadioVisibilityUpdate(IILjava/lang/Object;)V
    .locals 2
    .parameter "isHeadsetPlugged"
    .parameter "flag"
    .parameter "obj"

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 222
    :cond_0
    return-void
.end method

.method public handleStopMarquee()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 549
    :cond_1
    return-void
.end method

.method public isControllerShowing()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 461
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 464
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->startControllerAnimation()V

    .line 468
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 472
    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 475
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->stopMarguee()V

    .line 485
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 507
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 508
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 514
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 518
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player_lock.info"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 520
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isTopLayout:Z

    if-eqz v1, :cond_1

    .line 521
    iget v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMaxLayout(I)V

    .line 525
    :goto_1
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 523
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMaxLayout(I)V

    goto :goto_1
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 749
    return-void
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 758
    return-void
.end method

.method public setBottomLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 565
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isTopLayout:Z

    .line 566
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x10803d7

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 568
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 569
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 571
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 572
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 573
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .locals 3
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mIsMoving:Z

    .line 716
    if-eqz p1, :cond_3

    .line 717
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mWasShowed:Z

    if-eqz v0, :cond_1

    .line 718
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 720
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->addMinTimer()V

    .line 732
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 715
    goto :goto_0

    .line 725
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mWasShowed:Z

    .line 726
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_4

    .line 727
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 728
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mVisibleLayout:Z

    .line 730
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->removeMinTimer()V

    goto :goto_1
.end method

.method public setScreenOff()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mScreenOn:Z

    .line 533
    return-void
.end method

.method public setScreenOn()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mScreenOn:Z

    .line 529
    return-void
.end method

.method public setTopLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 552
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isTopLayout:Z

    .line 553
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x10803d7

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 555
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 556
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 557
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 560
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 561
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 562
    return-void
.end method

.method public startControllerAnimation()V
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->removeMinTimer()V

    .line 696
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isMaxLayout:Z

    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMinLayout()V

    .line 705
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 700
    iget v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMaxLayout(I)V

    goto :goto_0

    .line 702
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public stopMarguee()V
    .locals 4

    .prologue
    const/16 v2, 0x12c4

    .line 537
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 541
    return-void
.end method

.method public updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "freq"
    .parameter "chname"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 580
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 581
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 582
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 589
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 590
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 594
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 595
    return-void

    .line 591
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

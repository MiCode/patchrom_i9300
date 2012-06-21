.class public Lcom/android/internal/policy/impl/CircleMusicWidget;
.super Landroid/widget/RelativeLayout;
.source "CircleMusicWidget.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleMediaWidget;


# static fields
.field private static final MUSICHUB_FF_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.down"

.field private static final MUSICHUB_FF_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.up"

.field private static final MUSICHUB_MEDIA_INFO:Ljava/lang/String; = "com.samsung.music.musicservicecommand.mediainfo"

.field private static final MUSICHUB_NEXT:Ljava/lang/String; = "com.samsung.music.musicservicecommand.next"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final MUSICHUB_PREVIOUS:Ljava/lang/String; = "com.samsung.music.musicservicecommand.previous"

.field private static final MUSICHUB_REW_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.down"

.field private static final MUSICHUB_REW_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.up"

.field private static final MUSICHUB_TOGGLEPAUSE:Ljava/lang/String; = "com.samsung.music.musicservicecommand.togglepause"

.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.sec.android.app.musicmusicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_FF_ACTION:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.next"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.sec.android.app.musicmusicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.sec.android.app.musicmusicservicecommand.ff.up"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_ON:I = 0x1

.field private static final MUSICPLAYER_REW_ACTION:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.sec.android.app.musicmusicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.sec.android.app.musicmusicservicecommand.rew.up"

.field private static final MUSICPLAYER_TOGGLE_ACTION:Ljava/lang/String; = "com.sec.android.app.music.musicservicecommand.togglepause"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenMusicWidget"


# instance fields
.field private final AWAKE_POKE_MILLIS:I

.field private final DEBUG:Z

.field private final MSG_MEDIA_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STREAMING_MEDIA_UPDATE:I

.field private currentAlbumID:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtWithImage:Landroid/widget/ImageView;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxMusicController:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFFLongPressed:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxMusicController:Landroid/widget/FrameLayout;

.field private mMediaUri:Landroid/net/Uri;

.field private mMinMusicControllerHandle:Landroid/widget/LinearLayout;

.field private mMusicInfoTextInMax:Landroid/widget/TextView;

.field private mMusicInfoTextInMin:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mREWLongPressed:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->DEBUG:Z

    .line 81
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 90
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsMoving:Z

    .line 97
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsPlaying:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mWasShowed:Z

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentTitle:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 109
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->SHINK_ANIMATION_START:I

    .line 110
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->MSG_MEDIA_UPDATE:I

    .line 111
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->STREAMING_MEDIA_UPDATE:I

    .line 116
    const v2, 0xea60

    iput v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->AWAKE_POKE_MILLIS:I

    .line 122
    iput v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I

    .line 126
    new-instance v2, Lcom/android/internal/policy/impl/CircleMusicWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$1;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;

    .line 154
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 155
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 158
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 161
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090055

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 163
    const v2, 0x10202e6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v2, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v2, Lcom/android/internal/policy/impl/CircleMusicWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$2;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setFocusable(Z)V

    .line 238
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setFocusableInTouchMode(Z)V

    .line 239
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setDescendantFocusability(I)V

    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->init()V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mFFLongPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mFFLongPressed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/CircleMusicWidget;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->removeMinTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->addMinTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/CircleMusicWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mREWLongPressed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleMusicWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleMusicWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleMusicWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleMusicWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleMusicWidget;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleMusicWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setMaxLayout(I)V

    return-void
.end method

.method private addMinTimer()V
    .locals 4

    .prologue
    .line 1002
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "addMinTimer()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1005
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1007
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 317
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Controller Initiation Running!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const v2, 0x10202ee

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    .line 321
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 322
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 324
    const v2, 0x10202ef

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 328
    const v2, 0x10202e7

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    .line 329
    const v2, 0x10202e9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    .line 330
    const v2, 0x10202e8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    .line 331
    const v2, 0x10202ea

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 335
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMusicWidget$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$3;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    new-instance v2, Lcom/android/internal/policy/impl/CircleMusicWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$4;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 439
    const v2, 0x10202ed

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 440
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMusicWidget$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$5;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 461
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMusicWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$6;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 526
    new-instance v1, Lcom/android/internal/policy/impl/CircleMusicWidget$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$7;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 555
    .local v1, nextKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 557
    const v2, 0x10202eb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 558
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMusicWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$8;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 579
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMusicWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$9;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 644
    new-instance v0, Lcom/android/internal/policy/impl/CircleMusicWidget$10;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$10;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    .line 673
    .local v0, beforeKeyListener:Landroid/view/View$OnKeyListener;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 675
    const v2, 0x10202ec

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 676
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/CircleMusicWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMusicWidget$11;-><init>(Lcom/android/internal/policy/impl/CircleMusicWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "at init() send broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.musicmusicservicecommand.checkplaystatus"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 696
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->resetMinTimer()V

    .line 697
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 698
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    .line 699
    return-void
.end method

.method private removeMinTimer()V
    .locals 3

    .prologue
    const/16 v2, 0x12c1

    .line 995
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "removeMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 998
    :cond_0
    return-void
.end method

.method private resetMinTimer()V
    .locals 2

    .prologue
    .line 1011
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "resetMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->removeMinTimer()V

    .line 1013
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->addMinTimer()V

    .line 1014
    return-void
.end method

.method private setMaxLayout(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 928
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMaxLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 957
    :goto_0
    return-void

    .line 934
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    .line 937
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 939
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 944
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V

    .line 950
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 953
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 956
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->resetMinTimer()V

    goto :goto_0

    .line 946
    :cond_1
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private setMinLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 961
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMinLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_0

    .line 990
    :goto_0
    return-void

    .line 967
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    .line 970
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 977
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    .line 981
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_2

    .line 982
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V

    .line 987
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 984
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->startTranslateAnimation(III)V

    goto :goto_1
.end method

.method private startTranslateAnimation(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 915
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "startTranslateAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsMoving:Z

    if-eqz v1, :cond_0

    .line 924
    :goto_0
    return-void

    .line 919
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 920
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 921
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 922
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 923
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 751
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 755
    return-void
.end method

.method protected handleMediaUpdate(IILandroid/net/Uri;)V
    .locals 6
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "mediaUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 248
    const-string v4, "GlassLockScreenMusicWidget"

    const-string v5, "handleMediaUpdate !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-nez p3, :cond_0

    .line 273
    :goto_0
    return-void

    .line 252
    :cond_0
    if-ne p1, v2, :cond_2

    move v0, v2

    .line 253
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsPlaying:Z

    .line 254
    if-ne p2, v2, :cond_3

    move v1, v2

    .line 256
    .local v1, bIsStop:Z
    :goto_2
    if-eqz v0, :cond_1

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    .line 261
    :cond_1
    if-eqz v1, :cond_4

    .line 262
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 263
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_2
    move v0, v3

    .line 252
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_3
    move v1, v3

    .line 254
    goto :goto_2

    .line 267
    .restart local v1       #bIsStop:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108044e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 272
    :goto_3
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/CircleMusicWidget;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_0

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108044f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method protected handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "isPlaying"
    .parameter "hostType"
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    const-string v4, "GlassLockScreenMusicWidget"

    const-string v5, "handleMediaUpdate 11!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentTitle:Ljava/lang/String;

    .line 283
    iput-object p4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    .line 285
    if-ne p1, v2, :cond_4

    move v0, v2

    .line 286
    .local v0, bIsPlaying:Z
    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsPlaying:Z

    .line 287
    if-nez p2, :cond_5

    move v1, v2

    .line 290
    .local v1, bIsStop:Z
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104060d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    .line 294
    :cond_2
    if-eqz v0, :cond_3

    .line 295
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    .line 299
    :cond_3
    if-eqz v1, :cond_6

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 301
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    goto :goto_0

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_4
    move v0, v3

    .line 285
    goto :goto_1

    .restart local v0       #bIsPlaying:Z
    :cond_5
    move v1, v3

    .line 287
    goto :goto_2

    .line 305
    .restart local v1       #bIsStop:Z
    :cond_6
    if-eqz v0, :cond_7

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108044e

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 310
    :goto_3
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/CircleMusicWidget;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108044f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public isControllerShowing()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1054
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 702
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 705
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "onKeyDown at GlasslockScreenMusic()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->startControllerAnimation()V

    .line 709
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "startControllerAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 713
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "KEYCODE_VOLUME_UP()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_2

    .line 718
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "KEYCODE_VOLUME_DOWN()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 741
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 745
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 746
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 747
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 725
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() isTopLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMaxLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    .line 728
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeightDifference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.musicmusicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 732
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_0

    .line 733
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setMaxLayout(I)V

    .line 737
    :goto_0
    return-void

    .line 735
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1079
    :goto_0
    return-void

    .line 1077
    :cond_0
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBottomLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x50

    .line 771
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    .line 772
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803d7

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 773
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 774
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 775
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 777
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 778
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 779
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .locals 5
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1033
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setControllerVisibility() : bIsVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVisibleLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mIsMoving:Z

    .line 1035
    if-eqz p1, :cond_3

    .line 1036
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mWasShowed:Z

    if-eqz v0, :cond_1

    .line 1037
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    if-nez v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1039
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    .line 1041
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->addMinTimer()V

    .line 1051
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1034
    goto :goto_0

    .line 1044
    :cond_3
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mWasShowed:Z

    .line 1045
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_4

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1047
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    .line 1049
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->removeMinTimer()V

    goto :goto_1
.end method

.method public setTopLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 758
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    .line 759
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803d7

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 761
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 762
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 763
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 766
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 767
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    return-void
.end method

.method public startControllerAnimation()V
    .locals 2

    .prologue
    .line 1018
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "startControllerAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->removeMinTimer()V

    .line 1020
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_0

    .line 1021
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setMinLayout()V

    .line 1029
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1

    .line 1024
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setMaxLayout(I)V

    goto :goto_0

    .line 1026
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->setMaxLayout(I)V

    goto :goto_0
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .locals 17
    .parameter "mediaUri"

    .prologue
    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v14

    .line 786
    .local v14, mScreenOn:Z
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-nez v14, :cond_0

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 886
    :goto_0
    return-void

    .line 792
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    if-eqz v2, :cond_1

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 798
    :goto_1
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "updateMediaPlayer()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMediaUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "mediaUri is same return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 795
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1

    .line 806
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMediaUri:Landroid/net/Uri;

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 810
    .local v11, mCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_8

    .line 811
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 812
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 814
    :try_start_0
    const-string v2, "title"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentTitle:Ljava/lang/String;

    .line 815
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    .line 816
    const-string v2, "album_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104060d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 833
    .local v15, newTitleText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayer() newTitleText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_4

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/audio/albumart/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 841
    .local v8, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 842
    .local v13, mInputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 843
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 844
    .local v10, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 848
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 856
    :goto_3
    if-eqz v13, :cond_4

    .line 857
    const/4 v2, 0x0

    invoke-static {v13, v2, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 859
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 868
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 885
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    :cond_5
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 821
    :catch_0
    move-exception v9

    .line 822
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 824
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Can\'t get String from Cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 827
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104060d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentTitle:Ljava/lang/String;

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleMusicWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104060d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentArtist:Ljava/lang/String;

    .line 829
    const-string v2, "0"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentAlbumID:Ljava/lang/String;

    goto/16 :goto_2

    .line 849
    .restart local v8       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v10       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #mInputStream:Ljava/io/InputStream;
    .restart local v15       #newTitleText:Ljava/lang/CharSequence;
    :catch_1
    move-exception v9

    .line 851
    .local v9, e:Ljava/io/FileNotFoundException;
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Album Art doesn\'t exit."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 852
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v9

    .line 853
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 854
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "Maybe unknown url."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 860
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v9

    .line 862
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "mInputStream.close() Failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 871
    .end local v8           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #mInputStream:Ljava/io/InputStream;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 873
    const/16 v2, 0x8

    new-array v12, v2, [I

    fill-array-data v12, :array_0

    .line 877
    .local v12, mDefaultAlbumAriId:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    array-length v3, v12

    rem-int/2addr v2, v3

    aget v16, v12, v2

    .line 878
    .local v16, randomAlbumArtId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 882
    .end local v12           #mDefaultAlbumAriId:[I
    .end local v15           #newTitleText:Ljava/lang/CharSequence;
    .end local v16           #randomAlbumArtId:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 883
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mVisibleLayout:Z

    goto/16 :goto_5

    .line 873
    :array_0
    .array-data 0x4
        0xf7t 0x3t 0x8t 0x1t
        0xf8t 0x3t 0x8t 0x1t
        0xf9t 0x3t 0x8t 0x1t
        0xfat 0x3t 0x8t 0x1t
        0xfbt 0x3t 0x8t 0x1t
        0xfct 0x3t 0x8t 0x1t
        0xfdt 0x3t 0x8t 0x1t
        0xfet 0x3t 0x8t 0x1t
    .end array-data
.end method

.method public updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 890
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 892
    .local v0, mScreenOn:Z
    const-string v2, "GlassLockScreenMusicWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    if-nez v0, :cond_0

    .line 894
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 895
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 910
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->isMaxLayout:Z

    if-eqz v2, :cond_1

    .line 899
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 904
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 905
    .local v1, newTitleText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 901
    .end local v1           #newTitleText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1
.end method

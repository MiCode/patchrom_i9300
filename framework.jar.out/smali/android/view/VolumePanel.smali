.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$LoadListener;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final EXTRA_BUTTON_OFF:I = 0x0

.field private static final EXTRA_BUTTON_ON:I = 0x1

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final STREAMS:[Landroid/view/VolumePanel$StreamResources; = null

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static getCurrentFMVol:I

.field static getCurrentVol:I

.field static mIsLoadSoundPool:Z

.field static mPrevFMVol:I

.field static mPrevVol:I

.field static mProgressChanged:Z


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private final mMoreButton:Landroid/view/View;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    sput-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    .line 70
    sput-boolean v2, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    .line 136
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 149
    sput v2, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 150
    sput v2, Landroid/view/VolumePanel;->mPrevVol:I

    .line 151
    sput v2, Landroid/view/VolumePanel;->getCurrentFMVol:I

    .line 152
    sput v2, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 154
    sput-boolean v2, Landroid/view/VolumePanel;->mProgressChanged:Z

    .line 220
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VideoCallStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 13
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 290
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 124
    const/4 v6, -0x1

    iput v6, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 143
    new-array v6, v9, [[I

    new-array v7, v12, [I

    fill-array-data v7, :array_0

    aput-object v7, v6, v10

    iput-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 291
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 292
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 293
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 295
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 297
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x1090108

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 298
    .local v4, view:Landroid/view/View;
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v7, Landroid/view/VolumePanel$1;

    invoke-direct {v7, p0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x102040f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 305
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020410

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 306
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020412

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 307
    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x1020411

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 309
    new-instance v6, Landroid/view/VolumePanel$2;

    const v7, 0x1030313

    invoke-direct {v6, p0, p1, v7}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 318
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v7, "Volume control"

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 320
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v7, Landroid/view/VolumePanel$3;

    invoke-direct {v7, p0}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 328
    iget-object v6, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 329
    .local v5, window:Landroid/view/Window;
    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 330
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 331
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v8, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 333
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 335
    const/16 v6, 0x7e4

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 336
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 337
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 339
    const v6, 0x40028

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 341
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v6

    new-array v6, v6, [Landroid/media/ToneGenerator;

    iput-object v6, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 342
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    iput-object v6, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 344
    new-instance v6, Landroid/media/SoundPool;

    invoke-direct {v6, v9, v12, v10}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v6, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 345
    iget-object v6, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v7, Landroid/view/VolumePanel$LoadListener;

    invoke-direct {v7, p0, v8}, Landroid/view/VolumePanel$LoadListener;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    invoke-virtual {v6, v7}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 346
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/media/audio/ui/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v8, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v0

    aget v8, v8, v10

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, filePath:Ljava/lang/String;
    iget-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    iget-object v7, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v7, v1, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v9

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v1           #filePath:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 353
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_1

    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VolumePanel mVoiceCapable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 357
    iget-boolean v6, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v6, :cond_2

    .line 358
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :goto_1
    invoke-direct {p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 365
    return-void

    .line 361
    :cond_2
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 143
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Landroid/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/16 v6, 0x8

    .line 449
    iget-boolean v3, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v3, :cond_3

    .line 452
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 453
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    const v3, 0x10802b3

    iput v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 454
    const v3, 0x10802b4

    iput v3, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 455
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 456
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 457
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_2

    const-string v3, "VolumePanel"

    const-string v4, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_2
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_3

    .line 459
    iget-object v3, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 463
    .end local v1           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 465
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 466
    .local v2, streamType:I
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_5

    .line 463
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    :cond_5
    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 473
    :cond_6
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 474
    .restart local v1       #sc:Landroid/view/VolumePanel$StreamControl;
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 475
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v3, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 476
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 477
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 478
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_7

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOtherVolumes stream : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_7
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_4

    .line 480
    iget-object v3, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 484
    .end local v1           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v2           #streamType:I
    :cond_8
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 486
    .restart local v1       #sc:Landroid/view/VolumePanel$StreamControl;
    const v3, 0x10802b6

    iput v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 487
    const v3, 0x10802b7

    iput v3, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 488
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 489
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 490
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_9

    const-string v3, "VolumePanel"

    const-string v4, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_9
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 492
    iget-object v3, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 541
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 544
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 545
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 544
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 400
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 402
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 403
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 404
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_2

    .line 405
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 406
    .local v5, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 407
    .local v6, streamType:I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 408
    .local v4, sc:Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 409
    const v7, 0x1090109

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 410
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x1020413

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 412
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 413
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 414
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 415
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 416
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x10203a7

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ExtSeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    .line 422
    const/4 v7, 0x6

    if-eq v6, v7, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 424
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v8, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/ExtSeekBar;->setMax(I)V

    .line 425
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/ExtSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 426
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/ExtSeekBar;->setTag(Ljava/lang/Object;)V

    .line 427
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 422
    .end local v2           #plusOne:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 429
    .end local v4           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_2
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 531
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 532
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 533
    iget-object v2, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v2, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 538
    return-void
.end method

.method private forceTimeout()V
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 990
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 991
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 992
    const-string v0, "VolumePanel"

    const-string v1, "call forceTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 875
    monitor-enter p0

    .line 876
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 878
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 886
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 881
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 396
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$4;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 393
    return-void
.end method

.method private phoneIsOffhook()Z
    .locals 6

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, phoneOffhook:Z
    :try_start_0
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 261
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 267
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1

    .line 268
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_1
    return v2

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 432
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 434
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 435
    .local v0, active:Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 436
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 445
    :goto_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 446
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 440
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 441
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 442
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 984
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 985
    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 986
    const-string v0, "VolumePanel"

    const-string v1, "call resetTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 6
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    const/4 v5, 0x1

    .line 896
    iget-object v2, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .line 897
    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_2

    .line 898
    iput p1, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 899
    iput p2, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 902
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 903
    .local v0, index:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolumePanel setMusicIcon index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    iget-boolean v2, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v2, :cond_4

    .line 905
    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v2

    if-eq v2, v5, :cond_1

    if-nez v0, :cond_3

    .line 906
    :cond_1
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    .end local v0           #index:I
    :cond_2
    :goto_0
    return-void

    .line 908
    .restart local v0       #index:I
    :cond_3
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 912
    :cond_4
    iget v2, v1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v2

    if-ne v2, v5, :cond_5

    if-nez v0, :cond_5

    .line 913
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 915
    :cond_5
    iget-object v2, v1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .locals 5
    .parameter "sc"

    .prologue
    .line 499
    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 501
    :cond_0
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v3, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 505
    :goto_0
    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    .line 506
    .local v1, muted:Z
    iget-object v3, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v3, 0x10802b5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 513
    :cond_1
    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 514
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget v3, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 515
    .local v0, index:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolumePanel updateSlider index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_2
    iget-boolean v2, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v2, :cond_7

    .line 517
    iget-object v3, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    .end local v0           #index:I
    :cond_3
    :goto_3
    return-void

    .line 503
    .end local v1           #muted:Z
    :cond_4
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v3, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    goto :goto_0

    .line 506
    .restart local v1       #muted:Z
    :cond_5
    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1

    .line 517
    .restart local v0       #index:I
    :cond_6
    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2

    .line 520
    :cond_7
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 550
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 551
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 552
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 553
    .local v2, sc:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v2           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public forceDismiss()V
    .locals 0

    .prologue
    .line 996
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    .line 997
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 934
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 981
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 937
    :pswitch_1
    const-string v0, "VolumePanel"

    const-string v1, "change volume by MSG_VOLUME_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 943
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 948
    :pswitch_3
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "stop play sound by MSG_STOP_SOUNDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 954
    :pswitch_4
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "play sound by MSG_PLAY_SOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 966
    :pswitch_5
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    const-string v0, "VolumePanel"

    const-string v1, "dismiss by MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 969
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 974
    :pswitch_6
    const-string v0, "VolumePanel"

    const-string v1, "change mode by MSG_RINGER_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    invoke-direct {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 934
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isExtraButtonOn()Z
    .locals 5

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 277
    .local v1, rtvalue:Z
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "extraVolume"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, extraButtonOn:Ljava/lang/String;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    const/4 v1, 0x1

    .line 286
    :goto_0
    return v1

    .line 284
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1034
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 1036
    :cond_0
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1037
    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 922
    monitor-enter p0

    .line 923
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 924
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 925
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 927
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 923
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 929
    :cond_1
    monitor-exit p0

    .line 930
    return-void

    .line 929
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 810
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 813
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 816
    :cond_0
    monitor-enter p0

    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 819
    monitor-exit p0

    .line 845
    :goto_0
    return-void

    .line 821
    :cond_1
    sget-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_3

    .line 823
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v8, 0x0

    .local v8, effect:I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 826
    .local v9, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 829
    .end local v9           #filePath:Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x28

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 835
    .end local v8           #effect:I
    :cond_3
    :goto_2
    :try_start_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 836
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 842
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 843
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 830
    .restart local v8       #effect:I
    :catch_0
    move-exception v7

    .line 832
    .local v7, e1:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 842
    .end local v7           #e1:Ljava/lang/InterruptedException;
    .end local v8           #effect:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1001
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1002
    .local v1, tag:Ljava/lang/Object;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    const-string/jumbo v3, "onProgressChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    if-eqz p3, :cond_6

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 1004
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1006
    .local v0, sc:Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1007
    :cond_1
    if-lez p2, :cond_2

    .line 1008
    add-int/lit8 p2, p2, -0x1

    .line 1010
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_4

    .line 1011
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    const-string v2, "VolumePanel"

    const-string v3, "Set force progress level 1 for call volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_3
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 1016
    :cond_4
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_6

    .line 1017
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_5

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch setting volume level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_5
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1021
    .end local v0           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_6
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1022
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 9
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 702
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 706
    .local v0, index:I
    :goto_0
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 708
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 709
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    .line 717
    .local v1, max:I
    packed-switch p1, :pswitch_data_0

    .line 781
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 782
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 783
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v4}, Landroid/widget/ExtSeekBar;->getMax()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 784
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/ExtSeekBar;->setMax(I)V

    .line 786
    :cond_2
    iget-object v4, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 789
    :cond_3
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 790
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 791
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 793
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_4

    .line 794
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    .line 796
    :cond_4
    iget-object v4, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 800
    :cond_5
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, v8}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 804
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 806
    :cond_6
    return-void

    .line 702
    .end local v0           #index:I
    .end local v1           #max:I
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    :cond_7
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto/16 :goto_0

    .line 721
    .restart local v0       #index:I
    .restart local v1       #max:I
    :pswitch_1
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 723
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 724
    const-string v4, "VolumePanel"

    const-string/jumbo v5, "onShowVolumeChanged ringuri is null on STREAM_RING.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 732
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_2
    iget-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_8

    .line 736
    const v4, 0x10802ae

    const v5, 0x10802af

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 738
    :cond_8
    const v4, 0x10802b8

    const v5, 0x10802b9

    invoke-direct {p0, v4, v5}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 750
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 751
    add-int/lit8 v1, v1, 0x1

    .line 752
    goto/16 :goto_1

    .line 760
    :pswitch_4
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 762
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 763
    const-string v4, "VolumePanel"

    const-string/jumbo v5, "onShowVolumeChanged ringuri is null on STREAM_NOTIFICATION.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 775
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 776
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1025
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    return-void
.end method

.method protected onStopSounds()V
    .locals 5

    .prologue
    .line 849
    monitor-enter p0

    .line 850
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 851
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 852
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 853
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_1

    .line 854
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    const-string v3, "VolumePanel"

    const-string v4, "VolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 851
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 858
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_2
    monitor-exit p0

    .line 859
    return-void

    .line 858
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 1029
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 869
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 13
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 573
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_0

    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    if-nez p1, :cond_12

    .line 581
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/VolumePanel$StreamControl;

    .line 584
    .local v4, sc_voice:Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 585
    if-eqz v4, :cond_2

    .line 586
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v6

    if-nez v6, :cond_2

    .line 587
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_1

    .line 588
    const-string v6, "VolumePanel"

    const-string v7, "Call setChangeSeekbarColor(true)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6, v11}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    .line 617
    .end local v4           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_2
    :goto_0
    if-ne p1, v12, :cond_5

    .line 618
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v5

    .line 619
    .local v5, volumeLimitIndex:I
    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    sput v6, Landroid/view/VolumePanel;->getCurrentFMVol:I

    .line 621
    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "audioParam;curDevice"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, isMusicHPH:Ljava/lang/String;
    const-string v6, "HPH"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Landroid/view/VolumePanel;->getCurrentFMVol:I

    if-lt v6, v5, :cond_4

    sget v6, Landroid/view/VolumePanel;->mPrevFMVol:I

    if-ge v6, v5, :cond_4

    .line 624
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_3

    const-string v6, "VolumePanel"

    const-string v7, "[Ear Shock] Show warning message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.EAR_PROTECT_TOAST"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v1, intent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 629
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    sget v6, Landroid/view/VolumePanel;->getCurrentFMVol:I

    sput v6, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 632
    .end local v2           #isMusicHPH:Ljava/lang/String;
    .end local v5           #volumeLimitIndex:I
    :cond_5
    if-ne p1, v10, :cond_9

    .line 633
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v5

    .line 634
    .restart local v5       #volumeLimitIndex:I
    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    sput v6, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 636
    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "audioParam;curDevice"

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 637
    .restart local v2       #isMusicHPH:Ljava/lang/String;
    const-string v6, "HPH"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget v6, Landroid/view/VolumePanel;->getCurrentVol:I

    if-lt v6, v5, :cond_7

    sget v6, Landroid/view/VolumePanel;->mPrevVol:I

    if-ge v6, v5, :cond_7

    .line 639
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_6

    const-string v6, "VolumePanel"

    const-string v7, "[Ear Shock] Show warning message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.EAR_PROTECT_TOAST"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 644
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    sget v6, Landroid/view/VolumePanel;->getCurrentVol:I

    sput v6, Landroid/view/VolumePanel;->mPrevVol:I

    .line 647
    if-ne p1, v10, :cond_9

    .line 648
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 649
    .local v3, sc:Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_9

    .line 650
    iget-object v6, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    iget v7, v3, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v6, v7}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 651
    .local v0, index:I
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_8

    const-string v6, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VolumePanel onVolumeChanged index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_8
    iget-boolean v6, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v6, :cond_16

    .line 653
    iget-object v7, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_15

    iget v6, v3, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    .end local v0           #index:I
    .end local v2           #isMusicHPH:Ljava/lang/String;
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #volumeLimitIndex:I
    :cond_9
    :goto_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_b

    .line 663
    iget v6, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_18

    .line 664
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 669
    :cond_a
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 673
    :cond_b
    and-int/lit8 v6, p2, 0x4

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v6, :cond_d

    .line 680
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_c

    const-string v6, "VolumePanel"

    const-string v7, "VolumePanel onVolumeChanged call onPlaySound"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_c
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 682
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onPlaySound(II)V

    .line 687
    :cond_d
    and-int/lit8 v6, p2, 0x8

    if-eqz v6, :cond_e

    .line 688
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 689
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 690
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 693
    :cond_e
    invoke-virtual {p0, v11}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 694
    invoke-virtual {p0, v11}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x2710

    invoke-virtual {p0, v6, v7, v8}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 696
    if-eqz p2, :cond_f

    .line 697
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 699
    :cond_f
    return-void

    .line 593
    .restart local v4       #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_10
    if-eqz v4, :cond_2

    .line 594
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 595
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_11

    .line 596
    const-string v6, "VolumePanel"

    const-string v7, "Call setChangeSeekbarColor(false)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_11
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_0

    .line 602
    .end local v4           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    :cond_12
    if-nez p1, :cond_13

    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v6

    if-nez v6, :cond_2

    .line 604
    :cond_13
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/VolumePanel$StreamControl;

    .line 606
    .restart local v4       #sc_voice:Landroid/view/VolumePanel$StreamControl;
    if-eqz v4, :cond_2

    .line 607
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_14

    .line 608
    const-string v6, "VolumePanel"

    const-string v7, "Call setChangeSeekbarColor(false)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_14
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 611
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_0

    .line 653
    .end local v4           #sc_voice:Landroid/view/VolumePanel$StreamControl;
    .restart local v0       #index:I
    .restart local v2       #isMusicHPH:Ljava/lang/String;
    .restart local v3       #sc:Landroid/view/VolumePanel$StreamControl;
    .restart local v5       #volumeLimitIndex:I
    :cond_15
    iget v6, v3, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto/16 :goto_1

    .line 656
    :cond_16
    iget-object v7, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-nez v0, :cond_17

    iget v6, v3, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v6}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v6

    if-eqz v6, :cond_17

    iget v6, v3, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_17
    iget v6, v3, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_4

    .line 666
    .end local v0           #index:I
    .end local v2           #isMusicHPH:Ljava/lang/String;
    .end local v3           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v5           #volumeLimitIndex:I
    :cond_18
    iget v6, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v6, p1, :cond_a

    .line 667
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    goto/16 :goto_3
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 558
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 560
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 562
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 563
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

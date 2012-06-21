.class public Lcom/android/internal/policy/impl/UnlockTextToSpeech;
.super Ljava/lang/Object;
.source "UnlockTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;,
        Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static IsTtsInitiated:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UnlockTextToSpeech"

.field private static _instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private TtsString:Ljava/lang/String;

.field private TtsmissedEvent:Ljava/lang/String;

.field private Ttstime:Ljava/lang/String;

.field private Ttsweather:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 55
    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 52
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 53
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    .line 58
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttsweather:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 72
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    .line 76
    new-instance v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;-><init>(Lcom/android/internal/policy/impl/UnlockTextToSpeech;Lcom/android/internal/policy/impl/UnlockTextToSpeech$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    .line 77
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->doSpeak()V

    .line 80
    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    return p0
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 281
    const-class v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "UnlockTextToSpeech"

    const-string v2, "destroy"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 286
    sget-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 287
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    .line 288
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 289
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    monitor-exit v1

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/UnlockTextToSpeech;
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    const-class v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V

    .line 102
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 103
    sget-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->_instance:Lcom/android/internal/policy/impl/UnlockTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTtsLocalString(I)Ljava/lang/String;
    .locals 6
    .parameter "resId"

    .prologue
    .line 311
    sget-object v4, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 312
    sget-object v4, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, currentLang:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, strings:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 319
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    aget-object v4, v3, v1

    .line 324
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 318
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;)V
    .locals 7
    .parameter "currentEngine"

    .prologue
    .line 294
    if-eqz p1, :cond_0

    sget-object v4, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 297
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, locale:[Ljava/lang/String;
    new-instance v3, Ljava/util/Locale;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .local v3, newLocale:Ljava/util/Locale;
    sget-object v4, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 301
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    const-string v4, "UnlockTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading language ahead of sample check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v4, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 308
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 5

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 113
    .local v2, phoneInUse:Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 115
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 124
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 116
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 118
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "UnlockTextToSpeech"

    const-string v4, "phone.isIdle() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized stopTts()V
    .locals 2

    .prologue
    .line 274
    const-class v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit v1

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public doSpeak()V
    .locals 30

    .prologue
    .line 131
    const-string v26, "UnlockTextToSpeech"

    const-string v27, "Getting into speak TTS"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v26, :cond_4

    sget-boolean v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->IsTtsInitiated:Z

    if-eqz v26, :cond_4

    .line 134
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v26 .. v26}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v12

    .line 136
    .local v12, currentEngine:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 137
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v26 .. v26}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v12

    .line 139
    :cond_0
    new-instance v26, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 140
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->maybeUpdateTtsLanguage(Ljava/lang/String;)V

    .line 141
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v26 .. v26}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v13

    .line 143
    .local v13, currentLocale:Ljava/util/Locale;
    if-nez v13, :cond_2

    .line 145
    const-string v26, "UnlockTextToSpeech"

    const-string v27, "mTts.getLanguage() returns null"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v18

    .line 148
    .local v18, languageResult:I
    const/16 v26, -0x2

    move/from16 v0, v18

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    const/16 v26, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    .line 149
    :cond_1
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v27, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v26 .. v27}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 151
    const-string v26, "UnlockTextToSpeech"

    const-string v27, "TTS cannot use system language, using Locale.US instead"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v18           #languageResult:I
    :cond_2
    const-string v26, "UnlockTextToSpeech"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TTS locale:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v28 .. v28}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual/range {v26 .. v26}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v26

    if-nez v26, :cond_4

    .line 159
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v23, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v26, "streamType"

    const/16 v27, 0x9

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v26, "utteranceId"

    const-string v27, "Unlock screen tts ended"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 166
    .local v10, cal:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 168
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 169
    .local v15, hourInt:I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 170
    .local v22, minInt:I
    const/16 v26, 0x9

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 173
    .local v9, am_pm:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v19

    .line 175
    .local v19, mAM_PM_Check01:Z
    if-nez v19, :cond_7

    .line 176
    const/16 v26, 0xc

    move/from16 v0, v26

    if-le v15, v0, :cond_5

    .line 177
    add-int/lit8 v15, v15, -0xc

    .line 181
    :cond_3
    :goto_0
    if-nez v9, :cond_6

    .line 182
    const v26, 0x1070012

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 192
    :goto_1
    const-string v26, "UnlockTextToSpeech"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TTS Time:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v4, "aw_daemon_service_key_app_service_status"

    .line 196
    .local v4, KEY_APP_SERVICE_STATUS:Ljava/lang/String;
    const-string v5, "aw_daemon_service_key_loc_code"

    .line 197
    .local v5, KEY_CITY_ID:Ljava/lang/String;
    const/4 v6, 0x1

    .line 200
    .local v6, LOCK_SCREEN_SERVICE_CODE:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "aw_daemon_service_key_app_service_status"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 201
    .local v20, mAppServiceStatus:I
    and-int/lit8 v26, v20, 0x1

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 v17, 0x1

    .line 203
    .local v17, isServiceEnable:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "aw_daemon_service_key_loc_code"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 205
    .local v11, cityId:Ljava/lang/String;
    const-string v26, "UnlockTextToSpeech"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "isServiceEnable = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " cityId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v8, ""

    .line 208
    .local v8, Ttsweather:Ljava/lang/String;
    const-string v7, ""

    .line 210
    .local v7, TtsDegree:Ljava/lang/String;
    if-eqz v17, :cond_b

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_b

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "aw_daemon_service_key_temp_scale"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    .line 213
    .local v16, isCelsius:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "aw_daemon_service_key_current_temp"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v14, v0

    .line 214
    .local v14, currentTemp:I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, ". "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "aw_daemon_service_key_weather_text"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ". "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 216
    if-eqz v16, :cond_a

    .line 217
    const v26, 0x1070015

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const v29, 0x1070016

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .end local v14           #currentTemp:I
    .end local v16           #isCelsius:Z
    :goto_4
    const-string v26, "UnlockTextToSpeech"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TTS temperature= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", weather="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "notification"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/NotificationManager;

    .line 231
    .local v21, mNM:Landroid/app/NotificationManager;
    if-nez v21, :cond_c

    .line 271
    .end local v4           #KEY_APP_SERVICE_STATUS:Ljava/lang/String;
    .end local v5           #KEY_CITY_ID:Ljava/lang/String;
    .end local v6           #LOCK_SCREEN_SERVICE_CODE:I
    .end local v7           #TtsDegree:Ljava/lang/String;
    .end local v8           #Ttsweather:Ljava/lang/String;
    .end local v9           #am_pm:I
    .end local v10           #cal:Ljava/util/Calendar;
    .end local v11           #cityId:Ljava/lang/String;
    .end local v12           #currentEngine:Ljava/lang/String;
    .end local v13           #currentLocale:Ljava/util/Locale;
    .end local v15           #hourInt:I
    .end local v17           #isServiceEnable:Z
    .end local v19           #mAM_PM_Check01:Z
    .end local v20           #mAppServiceStatus:I
    .end local v21           #mNM:Landroid/app/NotificationManager;
    .end local v22           #minInt:I
    .end local v23           #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :goto_5
    return-void

    .line 178
    .restart local v9       #am_pm:I
    .restart local v10       #cal:Ljava/util/Calendar;
    .restart local v12       #currentEngine:Ljava/lang/String;
    .restart local v13       #currentLocale:Ljava/util/Locale;
    .restart local v15       #hourInt:I
    .restart local v19       #mAM_PM_Check01:Z
    .restart local v22       #minInt:I
    .restart local v23       #myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    if-nez v15, :cond_3

    .line 179
    const/16 v15, 0xc

    goto/16 :goto_0

    .line 184
    :cond_6
    const v26, 0x1070013

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    goto/16 :goto_1

    .line 186
    :cond_7
    const v26, 0x1070014

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    .line 188
    const-string v26, "UnlockTextToSpeech"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "[24-hour format] TTS Time:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    .restart local v4       #KEY_APP_SERVICE_STATUS:Ljava/lang/String;
    .restart local v5       #KEY_CITY_ID:Ljava/lang/String;
    .restart local v6       #LOCK_SCREEN_SERVICE_CODE:I
    .restart local v20       #mAppServiceStatus:I
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 211
    .restart local v7       #TtsDegree:Ljava/lang/String;
    .restart local v8       #Ttsweather:Ljava/lang/String;
    .restart local v11       #cityId:Ljava/lang/String;
    .restart local v17       #isServiceEnable:Z
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 220
    .restart local v14       #currentTemp:I
    .restart local v16       #isCelsius:Z
    :cond_a
    const v26, 0x1070015

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const v29, 0x1070017

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 223
    .end local v14           #currentTemp:I
    .end local v16           #isCelsius:Z
    :cond_b
    const-string v7, ". "

    goto/16 :goto_4

    .line 234
    .restart local v21       #mNM:Landroid/app/NotificationManager;
    :cond_c
    const/16 v24, 0x0

    .line 235
    .local v24, nCallCount:I
    const/16 v25, 0x0

    .line 237
    .local v25, nMsgCount:I
    const-string v26, "com.android.phone"

    const/16 v27, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 238
    const-string v26, "com.android.mms"

    const/16 v27, 0x7b

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/app/NotificationInfo;->missedCount:I

    move/from16 v24, v0

    .line 242
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/app/NotificationInfo;->missedCount:I

    move/from16 v25, v0

    .line 245
    :cond_e
    if-lez v24, :cond_11

    if-lez v25, :cond_11

    .line 246
    const v26, 0x1070018

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    .line 261
    :goto_6
    if-gtz v24, :cond_f

    if-lez v25, :cond_10

    .line 263
    :cond_f
    const-string v26, "UnlockTextToSpeech"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_10
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->Ttstime:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\n"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    .line 266
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsString:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 268
    sget-object v26, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->mTtsListener:Lcom/android/internal/policy/impl/UnlockTextToSpeech$TtsListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_5

    .line 248
    :cond_11
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_12

    .line 249
    const v26, 0x1070019

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_6

    .line 251
    :cond_12
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    .line 252
    const v26, 0x107001a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_6

    .line 254
    :cond_13
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 255
    const v26, 0x107001b

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_6

    .line 256
    :cond_14
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_15

    .line 257
    const v26, 0x107001c

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getTtsLocalString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_6

    .line 259
    :cond_15
    const-string v26, ""

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->TtsmissedEvent:Ljava/lang/String;

    goto/16 :goto_6
.end method

.class public Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final LONG_PRESS_LAUNCH:I

.field private final NO_LAUNCH:I

.field private final SHORT_PRESS_LAUNCH:I

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->NO_LAUNCH:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->SHORT_PRESS_LAUNCH:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->LONG_PRESS_LAUNCH:I

    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private launchUserDefinedApp(I)Z
    .locals 10
    .parameter "mode"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 344
    const/4 v3, 0x0

    .line 345
    .local v3, launch_db:Ljava/lang/String;
    const/4 v4, 0x0

    .line 346
    .local v4, package_index:I
    const/4 v5, 0x0

    .line 347
    .local v5, package_name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 349
    .local v0, activity_name:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 360
    :goto_0
    if-eqz v3, :cond_0

    .line 361
    const/16 v8, 0x2f

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 362
    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 363
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 371
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "None pkg name"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 384
    :goto_1
    :pswitch_0
    return v6

    .line 353
    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "short_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    goto :goto_0

    .line 356
    :pswitch_2
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "long_press_app"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 366
    :cond_0
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "db is null"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 367
    goto :goto_1

    .line 375
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 376
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, e:Landroid/content/ActivityNotFoundException;
    sget-object v7, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v8, "Activity to be assigned by the key is not found."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 70
    .local v1, keyCode:I
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 73
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v10, 0x1000

    const/high16 v9, -0x8000

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 82
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 84
    .local v1, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v5, v6

    .line 224
    :cond_1
    :goto_1
    return v5

    .line 90
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, p1, v9}, Landroid/media/AudioManager;->handleKeyDown(II)V

    goto :goto_1

    .line 96
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    const/16 v7, 0xa4

    invoke-virtual {v6, v7, v9}, Landroid/media/AudioManager;->handleKeyDown(II)V

    goto :goto_1

    .line 109
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-nez v6, :cond_1

    .line 114
    :sswitch_3
    const/16 v6, 0x4f

    if-ne p1, v6, :cond_2

    const-string v6, "ril.factory_mode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PBA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 125
    :cond_2
    :sswitch_4
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 132
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 136
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 139
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 141
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 145
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto/16 :goto_1

    .line 154
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4

    .line 158
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 159
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 161
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 164
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v3, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 172
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v1, :cond_0

    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, launch_type:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_6

    .line 179
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 180
    const/4 v4, 0x1

    .line 187
    :cond_5
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->launchUserDefinedApp(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 188
    sget-object v6, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "There are no apps defined by the user key"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 181
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 182
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 183
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 185
    const/4 v4, 0x2

    goto :goto_2

    .line 194
    .end local v4           #launch_type:I
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_7

    .line 198
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 199
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 201
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v7, v5, :cond_8

    iget v7, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 204
    :cond_8
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/SearchManager;->stopSearch()V

    .line 210
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 216
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_6
        0x4f -> :sswitch_3
        0x54 -> :sswitch_8
        0x55 -> :sswitch_2
        0x56 -> :sswitch_4
        0x57 -> :sswitch_4
        0x58 -> :sswitch_4
        0x59 -> :sswitch_4
        0x5a -> :sswitch_4
        0x5b -> :sswitch_1
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_4
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xe4 -> :sswitch_7
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 231
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 232
    .local v1, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 236
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 296
    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3

    .line 242
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 245
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    const/high16 v5, -0x8000

    invoke-virtual {v4, p1, v5}, Landroid/media/AudioManager;->handleKeyUp(II)V

    goto :goto_0

    .line 255
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :sswitch_1
    const/16 v4, 0x4f

    if-ne p1, v4, :cond_3

    const-string v4, "ril.factory_mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PBA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    sget-object v4, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, " KeyEvent.KEYCODE_HEADSETHOOK blocked..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_3
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 272
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 287
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_0

    .line 236
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_4
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_3
        0x4f -> :sswitch_1
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->preDispatchKeyEvent(II)V

    .line 63
    return-void
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 58
    return-void
.end method

.method startCallActivity()V
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->sendCloseSystemWindows()V

    .line 301
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

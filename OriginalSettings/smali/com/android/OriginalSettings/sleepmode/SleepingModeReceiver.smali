.class public Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepingModeReceiver.java"


# static fields
.field private static sIsInProc:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndHour:I

.field private mEndMinute:I

.field private mFlightModeChanged:Z

.field private mIsEveryWeekRepeat:I

.field private mIsSleepingModeSet:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z

.field private mRepeatDays:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartHour:I

.field private mStartMinute:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const-string v0, "SleepingModeReceiver"

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    .line 118
    new-instance v0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver$1;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->enterSleepingMode(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private enterSleepingMode(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 223
    invoke-static {p1}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 225
    .local v1, isAirplaneModeOn:Z
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "previous_flight_mode"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    iget-boolean v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "sleeping_mode_suspended"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iput-boolean v4, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    .line 231
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 235
    :cond_0
    if-nez v1, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    sput-boolean v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    .line 246
    const-string v2, "enterSleepingMode"

    const-string v3, "Airplane mode on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 225
    goto :goto_0
.end method

.method private exitSleepingMode(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 256
    iget v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mIsEveryWeekRepeat:I

    if-nez v5, :cond_0

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 260
    .local v4, today:I
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    if-nez v5, :cond_0

    .line 261
    rsub-int/lit8 v5, v4, 0x7

    mul-int/lit8 v5, v5, 0x4

    shl-int v2, v9, v5

    .line 262
    .local v2, mask:I
    iget v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    .line 263
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_repeat_days"

    iget v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 264
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    iget v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    if-nez v5, :cond_0

    .line 267
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_sleeping_mode_is_set"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "sleeping_mode_enabled"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #mask:I
    .end local v4           #today:I
    :cond_0
    sput-boolean v9, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    .line 276
    iget-boolean v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    if-nez v5, :cond_1

    .line 277
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "previous_flight_mode"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 280
    .local v3, previousFlightMode:I
    if-nez v3, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #previousFlightMode:I
    :cond_1
    return-void
.end method

.method private isActivateDay(I)Z
    .locals 3
    .parameter "today"

    .prologue
    const/4 v1, 0x1

    .line 295
    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x4

    shl-int v0, v1, v2

    .line 297
    .local v0, mask:I
    iget v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 300
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnabledSleepingMode()Z
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "sleeping_mode_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const v7, 0x7f0d09ba

    const/4 v6, 0x1

    const v5, 0x7f0d09bb

    .line 142
    const-string v3, "ext_key_set_by_user"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 145
    .local v1, isValueChangedByUser:Z
    iget-boolean v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-nez v3, :cond_2

    .line 146
    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 149
    :cond_0
    invoke-static {p1}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->unregisterSleepingMode(Landroid/content/Context;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->cancelNotifySleepingMode(Landroid/content/Context;)V

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 155
    :cond_2
    iget v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mStartHour:I

    iget v4, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mEndHour:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mStartMinute:I

    iget v4, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mEndMinute:I

    if-ne v3, v4, :cond_3

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->unregisterSleepingMode(Landroid/content/Context;)V

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->cancelNotifySleepingMode(Landroid/content/Context;)V

    goto :goto_0

    .line 163
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 166
    .local v2, today:I
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 168
    invoke-static {p1, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 169
    iget-object v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    iget-object v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "sleeping_mode_suspended"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    iget-object v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    iget-boolean v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v3, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 175
    iput-boolean v6, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    goto :goto_0

    .line 179
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->enterSleepingMode(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 190
    :cond_5
    :goto_1
    invoke-static {p1, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 208
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 183
    :cond_7
    invoke-static {p1, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 185
    iput-boolean v6, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    .line 186
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_1

    .line 195
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_2

    .line 199
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_2

    .line 205
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private setNextTimeAction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->registerSleepingMode(Landroid/content/Context;)V

    .line 213
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const v3, 0x7f0d09bb

    const/4 v2, 0x1

    .line 71
    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "key_sleeping_mode_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 81
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->resetData(Landroid/content/Context;)V

    .line 85
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d09ba

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 94
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    :cond_6
    iget-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 107
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iput-boolean v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    .line 110
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 113
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public resetData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_sleeping_mode_is_set"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    .line 310
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_days"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    .line 312
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_every_week"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mIsEveryWeekRepeat:I

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_start_hour"

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mStartHour:I

    .line 315
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_start_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mStartMinute:I

    .line 317
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_end_hour"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mEndHour:I

    .line 318
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_end_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mEndMinute:I

    .line 320
    iput-boolean v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    .line 321
    iput-boolean v3, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    .line 322
    return-void
.end method

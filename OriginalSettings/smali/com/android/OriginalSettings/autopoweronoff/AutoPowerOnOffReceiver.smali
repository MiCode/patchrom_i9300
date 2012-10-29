.class public Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoPowerOnOffReceiver.java"


# static fields
.field private static sIsProcASM:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field private mEndHour:I

.field private mEndMinute:I

.field private mIsAutoPowerOnOffEnabled:Z

.field private mNoRepeatPowerON:I

.field private mNoRepeatPowerOff:I

.field private mRepeatDays:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartHour:I

.field private mStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->sIsProcASM:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const-string v0, "AutoPowerOnOffReceiver"

    iput-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private isActivateDay(I)Z
    .locals 4
    .parameter "today"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 243
    if-ge p1, v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v1

    .line 253
    :cond_1
    if-ne p1, v2, :cond_2

    const/16 p1, 0x8

    .line 255
    :cond_2
    add-int/lit8 v3, p1, -0x2

    shl-int v0, v2, v3

    .line 256
    .local v0, mask:I
    iget v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    move v1, v2

    .line 260
    goto :goto_0

    .line 263
    :cond_3
    iget v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v3, :cond_0

    move v1, v2

    .line 265
    goto :goto_0
.end method

.method private procAutoPowerOnOffAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "canceled_by_user"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 109
    const-string v0, "ext_key_changed_by_user"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "canceled_by_user"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mIsAutoPowerOnOffEnabled:Z

    if-nez v0, :cond_2

    .line 118
    invoke-static {p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    iget v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mEndHour:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mStartMinute:I

    iget v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mEndMinute:I

    if-eq v0, v1, :cond_1

    .line 126
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 127
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 128
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 129
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 136
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->isActivateDay(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 141
    iget v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mStartMinute:I

    if-ne v1, v0, :cond_1

    .line 147
    :cond_4
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-lez v0, :cond_5

    .line 148
    sput-boolean v4, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 151
    :cond_5
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v0, :cond_7

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    .line 161
    const-class v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirm;

    .line 162
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 163
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    const-class v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;

    .line 168
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const/high16 v0, 0x1404

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 175
    :cond_7
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v0, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    .line 180
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    if-ne v0, v4, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->resetToDefaults()V

    goto/16 :goto_0

    .line 187
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    .line 198
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-lez v0, :cond_9

    .line 203
    sput-boolean v4, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 204
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    .line 210
    :cond_9
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    if-nez v0, :cond_1

    .line 212
    const-wide/16 v0, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    .line 216
    iget v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    if-ne v0, v4, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->resetToDefaults()V

    goto/16 :goto_0

    .line 227
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto :goto_1
.end method

.method private setNextAlarmAction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 233
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffConfirmOnLock;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "key_auto_power_on_off_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 72
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->resetData(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-boolean v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mIsAutoPowerOnOffEnabled:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->procAutoPowerOnOffAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->procAutoPowerOnOffAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->setNextAlarmAction(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public resetData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_auto_power_on_off_setted"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mIsAutoPowerOnOffEnabled:Z

    .line 293
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_auto_power_on_off_repeat_days"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mRepeatDays:I

    .line 295
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mStartHour:I

    .line 296
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_start"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mStartMinute:I

    .line 298
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_hour_end"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mEndHour:I

    .line 299
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_minute_end"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mEndMinute:I

    .line 301
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    .line 303
    return-void
.end method

.method public resetToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    sput-boolean v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 275
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_auto_power_on_off_setted"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 276
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 277
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_no_repeat_power_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    iput v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerON:I

    .line 279
    iput v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mNoRepeatPowerOff:I

    .line 282
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_power_on_off"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    return-void
.end method

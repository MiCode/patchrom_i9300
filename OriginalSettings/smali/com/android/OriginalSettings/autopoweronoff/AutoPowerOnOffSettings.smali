.class public Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AutoPowerOnOffSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final SYNC_NOTIFICATION:Ljava/lang/Object;

.field public static final SYNC_REGISTER_RECEIVER:Ljava/lang/Object;

.field private static final sHandler:Landroid/os/Handler;

.field public static turnAutoPower:Z


# instance fields
.field public daysOfWeek:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field private mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->SYNC_REGISTER_RECEIVER:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->SYNC_NOTIFICATION:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 522
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private static calculateAlarm(II)Ljava/util/Calendar;
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 408
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 409
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 411
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 412
    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 415
    .local v2, nowMinute:I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 417
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 419
    :cond_1
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 420
    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 421
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 422
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 424
    return-object v0
.end method

.method public static calculateBootAlarm(IIII)J
    .locals 9
    .parameter "hour"
    .parameter "minute"
    .parameter "repeatDays"
    .parameter "RepeatSetting"

    .prologue
    .line 354
    move v2, p2

    .line 357
    .local v2, mRepeatDays:I
    if-nez v2, :cond_0

    .line 360
    const-wide/16 v6, -0x1

    .line 403
    :goto_0
    return-wide v6

    .line 363
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 364
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 366
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 367
    .local v3, nowHour:I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 370
    .local v4, nowMinute:I
    if-lt p0, v3, :cond_1

    if-ne p0, v3, :cond_2

    if-gt p1, v4, :cond_2

    .line 372
    :cond_1
    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 374
    :cond_2
    const/16 v6, 0xb

    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 375
    const/16 v6, 0xc

    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 376
    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 377
    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 380
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 381
    .local v5, today:I
    const/4 v6, 0x1

    if-ge v5, v6, :cond_4

    .line 403
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    goto :goto_0

    .line 389
    :cond_4
    const/4 v1, 0x0

    .line 391
    .local v1, mCount:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    const/16 v5, 0x8

    .line 392
    :cond_5
    const/4 v1, 0x0

    :goto_2
    const/4 v6, 0x7

    if-ge v1, v6, :cond_6

    .line 393
    const/4 v6, 0x1

    add-int v7, v5, v1

    add-int/lit8 v7, v7, -0x2

    rem-int/lit8 v7, v7, 0x7

    shl-int/2addr v6, v7

    and-int/2addr v6, v2

    if-lez v6, :cond_7

    .line 394
    const-string v6, "AutoPower"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Matched day is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v5, v1

    add-int/lit8 v8, v8, -0x2

    rem-int/lit8 v8, v8, 0x7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_6
    if-eqz p3, :cond_3

    .line 400
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 392
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getAutoPowerUpAlarmState()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 508
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_power_up_alarm"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 511
    :goto_0
    return v1

    .line 508
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getDataString(ZJ)Ljava/lang/String;
    .locals 13
    .parameter "isEnable"
    .parameter "time"

    .prologue
    const/16 v12, 0xa

    .line 475
    const-string v2, "0000000000000"

    .line 478
    .local v2, mReturnString:Ljava/lang/String;
    if-eqz p0, :cond_0

    const-wide/16 v10, -0x1

    cmp-long v10, p1, v10

    if-nez v10, :cond_1

    :cond_0
    move-object v3, v2

    .line 502
    .end local v2           #mReturnString:Ljava/lang/String;
    .local v3, mReturnString:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 482
    .end local v3           #mReturnString:Ljava/lang/String;
    .restart local v2       #mReturnString:Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0x0

    .line 484
    .local v6, oneMinuteTime:J
    new-instance v8, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 487
    .local v8, t:Landroid/text/format/Time;
    sub-long v10, p1, v6

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 488
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 489
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->year:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 492
    .local v9, yearString:Ljava/lang/String;
    iget v10, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v12, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, monthString:Ljava/lang/String;
    :goto_1
    iget v10, v8, Landroid/text/format/Time;->monthDay:I

    if-ge v10, v12, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, dayString:Ljava/lang/String;
    :goto_2
    iget v10, v8, Landroid/text/format/Time;->hour:I

    if-ge v10, v12, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->hour:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, hourString:Ljava/lang/String;
    :goto_3
    iget v10, v8, Landroid/text/format/Time;->minute:I

    if-ge v10, v12, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->minute:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, minuteString:Ljava/lang/String;
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 502
    .end local v2           #mReturnString:Ljava/lang/String;
    .restart local v3       #mReturnString:Ljava/lang/String;
    goto/16 :goto_0

    .line 492
    .end local v0           #dayString:Ljava/lang/String;
    .end local v1           #hourString:Ljava/lang/String;
    .end local v3           #mReturnString:Ljava/lang/String;
    .end local v4           #minuteString:Ljava/lang/String;
    .end local v5           #monthString:Ljava/lang/String;
    .restart local v2       #mReturnString:Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 494
    .restart local v5       #monthString:Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 496
    .restart local v0       #dayString:Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->hour:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 498
    .restart local v1       #hourString:Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v8, Landroid/text/format/Time;->minute:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4
.end method

.method public static registerAutoPowerOnOffAlarm(Landroid/content/Context;)V
    .locals 19
    .parameter "context"

    .prologue
    .line 299
    const-string v16, "key_auto_power_on_off_pref"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 301
    .local v13, sp:Landroid/content/SharedPreferences;
    const-string v16, "key_hour_start"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 302
    .local v11, sh:I
    const-string v16, "key_minute_start"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 303
    .local v12, sm:I
    const-string v16, "key_hour_end"

    const/16 v17, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 304
    .local v5, eh:I
    const-string v16, "key_minute_end"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 306
    .local v6, em:I
    const-string v16, "key_auto_power_on_off_repeat_days"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 308
    .local v9, repeatDays:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 309
    .local v4, calendar:Ljava/util/Calendar;
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 313
    .local v15, today:I
    if-nez v9, :cond_1

    .line 315
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 316
    const/16 v15, 0x8

    .line 317
    :cond_0
    add-int/lit8 v16, v15, -0x2

    move/from16 v0, v16

    int-to-double v7, v0

    .line 318
    .local v7, exp:D
    const-wide/high16 v16, 0x4000

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    .line 319
    double-to-int v15, v7

    .line 320
    invoke-static {v5, v6, v15, v9}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->calculateBootAlarm(IIII)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    .line 328
    .end local v7           #exp:D
    :goto_0
    const-string v16, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 331
    .local v3, am:Landroid/app/AlarmManager;
    new-instance v14, Landroid/content/Intent;

    const-string v16, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v14, startIntent:Landroid/content/Intent;
    const/16 v16, 0x0

    const/high16 v17, 0x1000

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 335
    .local v10, sender:Landroid/app/PendingIntent;
    const/16 v16, 0x0

    invoke-static {v11, v12}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    move/from16 v0, v16

    move-wide/from16 v1, v17

    invoke-virtual {v3, v0, v1, v2, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 336
    return-void

    .line 325
    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v10           #sender:Landroid/app/PendingIntent;
    .end local v14           #startIntent:Landroid/content/Intent;
    :cond_1
    invoke-static {v5, v6, v9, v9}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->calculateBootAlarm(IIII)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    goto :goto_0
.end method

.method public static sendData(JLandroid/content/Context;)V
    .locals 7
    .parameter "data"
    .parameter "context"

    .prologue
    .line 435
    const/4 v2, 0x1

    .line 437
    .local v2, isAutoPowerUpEnable:I
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_power_up_alarm"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 445
    :goto_0
    if-gtz v2, :cond_0

    .line 447
    const-string v4, "alarm"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 449
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {v4, p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getDataString(ZJ)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, mData:Ljava/lang/String;
    const-string v4, "AutoPowerOnOffSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v4, ""

    if-eq v3, v4, :cond_0

    if-nez v3, :cond_1

    .line 459
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v3           #mData:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 438
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "AutoPower"

    const-string v5, "Can\'t find isAutoPowerUpEnable : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x1

    goto :goto_0

    .line 457
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v3       #mData:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->setAutoPowerUp(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setAutoPowerOnOffState(Z)V
    .locals 3
    .parameter "isChecked"

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_power_on_off"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    return-void

    .line 518
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 339
    const-wide/16 v2, -0x1

    invoke-static {v2, v3, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->sendData(JLandroid/content/Context;)V

    .line 340
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 342
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.AUTO_POWER_ON_OFF_END_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 344
    .local v1, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 345
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 131
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->addPreferencesFromResource(I)V

    .line 99
    const-string v2, "toggle_auto_power_on_off_mode"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v2, "weekly_repeat"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    .line 102
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "key_auto_power_on_off_pref"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 103
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "key_auto_power_on_off_setted"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, isAutoPowerOnOffChecked:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 108
    sget-boolean v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    if-nez v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnOffState(Z)V

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "key_auto_power_on_off_repeat_days"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, repeat:I
    new-instance v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v2, v1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->daysOfWeek:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    .line 117
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->daysOfWeek:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setDaysOfWeek(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    .line 118
    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-virtual {v2, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 215
    sget-object v0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;

    invoke-direct {v1, p0, p1}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$3;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 137
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getAutoPowerUpAlarmState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 142
    sput-boolean v6, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 146
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 147
    .local v1, mTurnOffPowerOffAlarmPopup:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 149
    const v3, 0x7f0d09c7

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 150
    const v3, 0x7f0d09cb

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 151
    const v3, 0x7f0d04ee

    new-instance v4, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$1;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$1;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v3, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$2;-><init>(Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 190
    .end local v1           #mTurnOffPowerOffAlarmPopup:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v2

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->setAutoPowerOnOffState(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    sput-boolean v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 173
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_auto_power_on_off_setted"

    iget-object v5, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_no_repeat_power_off"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_no_repeat_power_on"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    iget-object v3, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    sput-boolean v2, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->registerAutoPowerOnOffAlarm(Landroid/content/Context;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.AUTO_POWER_ON_OFF_START_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "ext_key_changed_by_user"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 171
    :cond_2
    sput-boolean v6, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    goto :goto_1

    .line 185
    :cond_3
    sput-boolean v6, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->turnAutoPower:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->unregisterAutoPowerOnOffAlarm(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->getAutoPowerUpAlarmState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d09ca

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_auto_power_on_off_repeat_days"

    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getDaysOfWeek()Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 207
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mAutoPowerOnOff:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_auto_power_on_off_repeat_days"

    iget-object v2, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mWeeklyRepeat:Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffRepeatPreference;->getDaysOfWeek()Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/autopoweronoff/AutoPowerOnOffSettings;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    return-void
.end method

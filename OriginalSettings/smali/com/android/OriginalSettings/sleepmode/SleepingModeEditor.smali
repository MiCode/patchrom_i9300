.class public Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "SleepingModeEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static is24H:Z


# instance fields
.field private mDataChnaged:Z

.field private mEndTimeDisplay:Landroid/widget/TextView;

.field private mEveryWeekCheckBox:Landroid/widget/CheckBox;

.field private mEveryWeekRepeatType:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mReceiver:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

.field private mRepeatDay:I

.field private mRepeatDayContainer:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

.field private mRepeatType:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartTimeDisplay:Landroid/widget/TextView;

.field private mSubmitted:Z

.field timePickerEnd:Landroid/widget/TimePicker;

.field timePickerStart:Landroid/widget/TimePicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->is24H:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mDataChnaged:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    .line 98
    new-instance v0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mReceiver:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mHandler:Landroid/os/Handler;

    .line 356
    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;Landroid/content/Context;IIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p7}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->initTime(Landroid/content/Context;IIIIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private cancelDetailChange()V
    .locals 3

    .prologue
    .line 318
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 319
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 322
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->finish()V

    .line 323
    return-void
.end method

.method private hideKeyPad()V
    .locals 3

    .prologue
    .line 326
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 327
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 329
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, -0x1

    .line 276
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->is24H:Z

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    .line 277
    invoke-direct/range {v0 .. v7}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->initTime(Landroid/content/Context;IIIIII)V

    .line 279
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_days"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    .line 280
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_every_week"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatType:I

    .line 282
    iget v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatType:I

    if-ne v0, v9, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    :goto_0
    const v0, 0x7f0a0204

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekRepeatType:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekRepeatType:Landroid/view/View;

    new-instance v1, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$9;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$9;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private initTime(Landroid/content/Context;IIIIII)V
    .locals 11
    .parameter "context"
    .parameter "sHour"
    .parameter "sMin"
    .parameter "sAmpm"
    .parameter "eHour"
    .parameter "eMin"
    .parameter "eAmpm"

    .prologue
    .line 247
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_start_hour"

    const/16 v10, 0x17

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 248
    .local v6, startHour:I
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_start_minute"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 249
    .local v7, startMin:I
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_end_hour"

    const/4 v10, 0x7

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 250
    .local v4, endHour:I
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v9, "key_end_minute"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 252
    .local v5, endMin:I
    move v2, p2

    .line 253
    .local v2, currentStartHour:I
    const/4 v8, -0x1

    if-ne v2, v8, :cond_0

    .line 254
    move v2, v6

    .line 255
    :cond_0
    move v3, p3

    .line 256
    .local v3, currentStartMinute:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_1

    .line 257
    move v3, v7

    .line 259
    :cond_1
    move/from16 v0, p5

    .line 260
    .local v0, currentEndHour:I
    const/4 v8, -0x1

    if-ne v0, v8, :cond_2

    .line 261
    move v0, v4

    .line 262
    :cond_2
    move/from16 v1, p6

    .line 263
    .local v1, currentEndMinute:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_3

    .line 264
    move v1, v5

    .line 266
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 267
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 268
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 269
    iget-object v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 271
    const/4 v8, 0x1

    invoke-direct {p0, v2, v3, v8}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V

    .line 272
    const/4 v8, 0x0

    invoke-direct {p0, v2, v3, v8}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V

    .line 273
    return-void
.end method

.method private declared-synchronized saveDetailChange()V
    .locals 1

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSubmitted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    monitor-exit p0

    return-void

    .line 310
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->saveRepeat()V

    .line 313
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->setResult(I)V

    .line 314
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDisplay(IIZ)V
    .locals 6
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "isStartTime"

    .prologue
    .line 112
    const-string v0, ""

    .line 113
    .local v0, ampmStr:Ljava/lang/String;
    const-string v1, ""

    .line 115
    .local v1, now:Ljava/lang/String;
    sget-boolean v2, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->is24H:Z

    if-nez v2, :cond_1

    .line 116
    const/16 v2, 0xc

    if-lt p1, v2, :cond_0

    const/16 v2, 0x18

    if-ne p1, v2, :cond_2

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    rem-int/lit8 v2, p1, 0xc

    if-nez v2, :cond_3

    .line 122
    const/16 p1, 0xc

    .line 128
    :cond_1
    :goto_1
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_2
    if-eqz p3, :cond_5

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09b6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mStartTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_3
    return-void

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :cond_3
    rem-int/lit8 p1, p1, 0xc

    goto/16 :goto_1

    .line 133
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 139
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d09b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEndTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private updateRepeatDaysColor()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 348
    iget v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatType:I

    if-ne v0, v1, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    iget v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->setCheckDay(I)V

    .line 354
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$10;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isInSettedTime(Ljava/util/Calendar;)Z
    .locals 8
    .parameter "calendar"

    .prologue
    const/4 v6, 0x1

    .line 464
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 465
    .local v2, hour:I
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 467
    .local v3, minute:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 468
    .local v4, sh:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 469
    .local v5, sm:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 470
    .local v0, eh:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 472
    .local v1, em:I
    if-ge v4, v0, :cond_4

    .line 473
    if-ge v4, v2, :cond_1

    if-le v0, v2, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v6

    .line 475
    :cond_1
    if-ne v4, v2, :cond_3

    .line 476
    if-ge v3, v5, :cond_0

    .line 508
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 478
    :cond_3
    if-ne v0, v2, :cond_2

    .line 479
    if-ge v3, v1, :cond_2

    goto :goto_0

    .line 483
    :cond_4
    if-le v4, v0, :cond_6

    .line 484
    if-lt v4, v2, :cond_0

    if-gt v0, v2, :cond_0

    .line 486
    if-ne v4, v2, :cond_5

    .line 487
    if-lt v3, v5, :cond_2

    goto :goto_0

    .line 489
    :cond_5
    if-ne v0, v2, :cond_2

    .line 490
    if-ge v3, v1, :cond_2

    goto :goto_0

    .line 494
    :cond_6
    if-ne v4, v0, :cond_2

    .line 495
    if-ne v4, v2, :cond_2

    .line 496
    if-ge v5, v1, :cond_7

    .line 497
    if-gt v5, v3, :cond_2

    if-le v1, v3, :cond_2

    goto :goto_0

    .line 500
    :cond_7
    if-le v5, v1, :cond_2

    .line 501
    if-le v5, v3, :cond_0

    if-le v1, v3, :cond_2

    goto :goto_0
.end method

.method public isInToday(Ljava/util/Calendar;)Z
    .locals 8
    .parameter "calendar"

    .prologue
    const/4 v6, 0x1

    .line 512
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 513
    .local v2, hour:I
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 515
    .local v3, minute:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 516
    .local v4, sh:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 517
    .local v5, sm:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 518
    .local v0, eh:I
    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 520
    .local v1, em:I
    if-le v4, v2, :cond_1

    const/16 v7, 0x17

    if-gt v4, v7, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v6

    .line 522
    :cond_1
    if-ne v4, v2, :cond_2

    if-ge v5, v3, :cond_0

    .line 525
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 333
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onBackPressed()V

    .line 334
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    const v0, 0x7f0d09b4

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->setTitle(I)V

    .line 303
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 304
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v2, 0x7f0400b5

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->setContentView(I)V

    .line 156
    const v2, 0x7f0a01fd

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mStartTimeDisplay:Landroid/widget/TextView;

    .line 157
    const v2, 0x7f0a01fe

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    .line 158
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 159
    const v2, 0x7f0a01ff

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEndTimeDisplay:Landroid/widget/TextView;

    .line 160
    const v2, 0x7f0a0200

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TimePicker;

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    .line 161
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 163
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$1;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 170
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$2;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$3;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$4;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$4;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 190
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$5;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 197
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$6;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$6;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$7;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$7;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    new-instance v3, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$8;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$8;-><init>(Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;)V

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 219
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 221
    const-string v2, "key_sleeping_mode_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 223
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 225
    const v2, 0x7f0a0203

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    .line 226
    const v2, 0x7f0a0205

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    .line 228
    const v2, 0x7f0a01f9

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;

    .line 230
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mReceiver:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 237
    invoke-direct {p0, p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->init(Landroid/content/Context;)V

    .line 238
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 392
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 393
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 394
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f110003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 395
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0d010e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 396
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0d042c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 397
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mReceiver:Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 387
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 383
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 417
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 405
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->finish()V

    goto :goto_0

    .line 408
    :sswitch_1
    iput-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mDataChnaged:Z

    .line 409
    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->saveDetailChange()V

    goto :goto_0

    .line 413
    :sswitch_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->cancelDetailChange()V

    goto :goto_0

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0a0340 -> :sswitch_2
        0x7f0a0341 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->hideKeyPad()V

    .line 374
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 375
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 340
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->is24H:Z

    .line 341
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    sget-boolean v1, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->is24H:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 342
    iget-object v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    sget-boolean v1, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->is24H:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 344
    invoke-direct {p0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->updateRepeatDaysColor()V

    .line 345
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onStart()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    .line 109
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onStop()V

    .line 380
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 530
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onWindowFocusChanged(Z)V

    .line 551
    return-void
.end method

.method public saveRepeat()V
    .locals 10

    .prologue
    const/4 v6, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 423
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->getCheckDay()I

    move-result v1

    .line 425
    .local v1, checkDay:I
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    .line 426
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->clearFocus()V

    .line 428
    iget-boolean v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSubmitted:Z

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 430
    .local v0, c:Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 431
    .local v3, curHour:I
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 432
    .local v4, curMinute:I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 434
    .local v2, curDay:I
    iput v9, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    .line 436
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->isInSettedTime(Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->isInToday(Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Ljava/util/Calendar;->add(II)V

    .line 438
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 441
    :cond_0
    iget v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    const v6, 0xfffffff

    rsub-int/lit8 v7, v2, 0x7

    mul-int/lit8 v7, v7, 0x4

    shl-int v7, v8, v7

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    .line 443
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    iget v6, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    invoke-virtual {v5, v6}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->setCheckDay(I)V

    .line 444
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDayContainer:Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/sleepmode/RepeatBtnGroup;->getCheckDay()I

    move-result v1

    .line 447
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #curDay:I
    .end local v3           #curHour:I
    .end local v4           #curMinute:I
    :cond_1
    iput v1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    .line 449
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 450
    iput v8, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatType:I

    .line 454
    :goto_0
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_repeat_days"

    iget v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatDay:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 455
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_repeat_every_week"

    iget v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatType:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 456
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_start_hour"

    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_start_minute"

    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerStart:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 458
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_end_hour"

    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 459
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_end_minute"

    iget-object v7, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->timePickerEnd:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 460
    iget-object v5, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 461
    return-void

    .line 452
    :cond_2
    iput v9, p0, Lcom/android/OriginalSettings/sleepmode/SleepingModeEditor;->mRepeatType:I

    goto :goto_0
.end method

.class Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;
.super Landroid/content/BroadcastReceiver;
.source "SleepingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/sleepmode/SleepingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 110
    :cond_0
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    const-string v12, "toggle_sleeping_mode"

    invoke-virtual {v11, v12}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 112
    .local v8, sleepingMode:Landroid/preference/CheckBoxPreference;
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$000(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "key_sleeping_mode_is_set"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    .line 113
    if-eqz v8, :cond_1

    .line 114
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 165
    .end local v8           #sleepingMode:Landroid/preference/CheckBoxPreference;
    :cond_1
    :goto_0
    return-void

    .line 119
    .restart local v8       #sleepingMode:Landroid/preference/CheckBoxPreference;
    :cond_2
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$000(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "sleeping_mode_enabled"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 120
    .local v2, isEnabled:Z
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$000(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "key_repeat_days"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 121
    .local v6, repeatDays:I
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$000(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "key_repeat_every_week"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 122
    .local v7, repeatWeek:I
    const-string v11, "state"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 124
    .local v9, stateFlightMode:Z
    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v9, :cond_1

    .line 126
    :cond_3
    if-nez v7, :cond_4

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 128
    .local v1, calendar:Ljava/util/Calendar;
    const/4 v11, 0x7

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 129
    .local v10, today:I
    const/4 v11, 0x1

    rsub-int/lit8 v12, v10, 0x7

    mul-int/lit8 v12, v12, 0x4

    shl-int v4, v11, v12

    .line 131
    .local v4, mask:I
    and-int v11, v6, v4

    if-eqz v11, :cond_4

    .line 132
    xor-int/lit8 v11, v4, -0x1

    and-int/2addr v6, v11

    .line 133
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "key_repeat_days"

    invoke-interface {v11, v12, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    if-nez v6, :cond_4

    .line 137
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "key_sleeping_mode_is_set"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "sleeping_mode_enabled"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$100(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v4           #mask:I
    .end local v10           #today:I
    :cond_4
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$200(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/preference/CheckBoxPreference;

    move-result-object v11

    iget-object v12, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v12}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$000(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "key_sleeping_mode_is_set"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0d09bb

    invoke-static {v11, v12}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 147
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$000(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "previous_flight_mode"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 150
    .local v5, previousFlightMode:I
    if-nez v5, :cond_5

    .line 152
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, mIntent:Landroid/content/Intent;
    const-string v11, "state"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    .end local v3           #mIntent:Landroid/content/Intent;
    .end local v5           #previousFlightMode:I
    :cond_5
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$300(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->updateSleepingMode()V

    .line 162
    iget-object v11, p0, Lcom/android/OriginalSettings/sleepmode/SleepingMode$1;->this$0:Lcom/android/OriginalSettings/sleepmode/SleepingMode;

    #getter for: Lcom/android/OriginalSettings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;
    invoke-static {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingMode;->access$300(Lcom/android/OriginalSettings/sleepmode/SleepingMode;)Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/OriginalSettings/sleepmode/SleepingModePreference;->refreshSleepingModeList()V

    goto/16 :goto_0
.end method

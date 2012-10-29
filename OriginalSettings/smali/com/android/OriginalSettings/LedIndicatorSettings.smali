.class public Lcom/android/OriginalSettings/LedIndicatorSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LedIndicatorSettings.java"


# instance fields
.field private misCharing:Landroid/preference/CheckBoxPreference;

.field private misIncomingNotification:Landroid/preference/CheckBoxPreference;

.field private misLowBattery:Landroid/preference/CheckBoxPreference;

.field private misMissedEvent:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, mContentResolver:Landroid/content/ContentResolver;
    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LedIndicatorSettings;->addPreferencesFromResource(I)V

    .line 63
    const-string v1, "led_indicator_charging_key"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v1, "led_indicator_low_battery_key"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v1, "led_indicator_missed_event_key"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    .line 66
    const-string v1, "led_indicator_incoming_notification_key"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    .line 68
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 85
    const-string v0, "LedIndicatorSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    iget-object v2, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_charing"

    iget-object v4, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    :goto_0
    return v1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_low_battery"

    iget-object v4, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 102
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_missed_event"

    iget-object v4, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_incoming_notification"

    iget-object v4, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 109
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 73
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 74
    const-string v0, "LedIndicatorSettings"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_charing"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 77
    iget-object v3, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_low_battery"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 78
    iget-object v3, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_missed_event"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_incoming_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 81
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v0, v2

    .line 77
    goto :goto_1

    :cond_2
    move v0, v2

    .line 78
    goto :goto_2

    :cond_3
    move v1, v2

    .line 79
    goto :goto_3
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onStop()V

    .line 91
    const-string v0, "LedIndicatorSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

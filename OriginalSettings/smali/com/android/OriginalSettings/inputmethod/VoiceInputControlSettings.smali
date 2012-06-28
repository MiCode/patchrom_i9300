.class public Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field private mCamera:Landroid/preference/CheckBoxPreference;

.field private mIncommingCalls:Landroid/preference/CheckBoxPreference;

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mRadio:Landroid/preference/CheckBoxPreference;

.field private mVideo:Landroid/preference/CheckBoxPreference;

.field private mVoiceInputControlEnabler:Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;

.field private mVoiceInputControlObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 68
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings$1;-><init>(Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 123
    const-string v0, "VoiceInputControlSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/16 v9, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 82
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v5, 0x7f070058

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 86
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v5, v1, Lmiui/preference/BasePreferenceActivity;

    if-eqz v5, :cond_1

    move-object v3, v1

    .line 89
    check-cast v3, Lmiui/preference/BasePreferenceActivity;

    .line 90
    .local v3, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v3}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 93
    .local v2, padding:I
    invoke-virtual {v0, v7, v7, v2, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 94
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 102
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    new-instance v5, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;

    invoke-direct {v5, v1, v0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;

    .line 104
    const-string v5, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v5, "voice_input_control_alarm"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 106
    const-string v5, "voice_input_control_camera"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v5, "voice_input_control_music"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 108
    const-string v5, "voice_input_control_radio"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v5, "voice_input_control_video"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    .line 111
    const-string v4, ""

    .line 112
    .local v4, productModel:Ljava/lang/String;
    const-string v5, "ro.product.model"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 113
    const-string v5, "i9300"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 227
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;->pause()V

    .line 197
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 203
    goto :goto_0

    .line 205
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_alarm"

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 208
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 211
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 212
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_music"

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 214
    :cond_8
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 215
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_radio"

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5

    .line 217
    :cond_a
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_video"

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_6
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlEnabler;->resume()V

    .line 134
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "voice_input_control"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_incomming_calls"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_alarm"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 149
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_camera"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 154
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_music"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 159
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "voice_input_control_radio"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->mVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_input_control_video"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 139
    goto :goto_0

    :cond_7
    move v0, v2

    .line 144
    goto :goto_1

    :cond_8
    move v0, v2

    .line 149
    goto :goto_2

    :cond_9
    move v0, v2

    .line 154
    goto :goto_3

    :cond_a
    move v0, v2

    .line 159
    goto :goto_4

    :cond_b
    move v1, v2

    .line 164
    goto :goto_5
.end method

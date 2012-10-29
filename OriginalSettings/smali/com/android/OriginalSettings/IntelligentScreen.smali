.class public Lcom/android/OriginalSettings/IntelligentScreen;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "IntelligentScreen.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mHelp:Landroid/preference/PreferenceScreen;

.field private mRotation:Landroid/preference/CheckBoxPreference;

.field private mSleep:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/android/OriginalSettings/IntelligentScreen$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/IntelligentScreen$1;-><init>(Lcom/android/OriginalSettings/IntelligentScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private CheckingAccelerometerRotationState()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/IntelligentScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->CheckingAccelerometerRotationState()V

    return-void
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 115
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v7, "intelligent_screen_mode"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    .line 116
    .local v4, saved_value:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, isAutoRotation:I
    iget-object v7, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "intelligent_sleep_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 120
    .local v2, isSleep:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "intelligent_rotation_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 122
    .local v1, isRotation:Z
    :goto_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->CheckingAccelerometerRotationState()V

    .line 124
    iget-object v7, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    iget-object v7, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    if-eqz v4, :cond_4

    .line 128
    iget-object v7, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 129
    iget-object v7, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    :goto_3
    if-nez v0, :cond_0

    .line 136
    iget-object v5, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 139
    :cond_0
    return-void

    .end local v0           #isAutoRotation:I
    .end local v1           #isRotation:Z
    .end local v2           #isSleep:Z
    .end local v4           #saved_value:Z
    :cond_1
    move v4, v6

    .line 115
    goto :goto_0

    .restart local v0       #isAutoRotation:I
    .restart local v4       #saved_value:Z
    :cond_2
    move v2, v6

    .line 119
    goto :goto_1

    .restart local v2       #isSleep:Z
    :cond_3
    move v1, v6

    .line 120
    goto :goto_2

    .line 131
    .restart local v1       #isRotation:Z
    :cond_4
    iget-object v5, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 132
    iget-object v5, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    .line 69
    instance-of v3, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 70
    check-cast v2, Lmiui/preference/BasePreferenceActivity;

    .line 71
    .local v2, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 73
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 75
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0966

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 85
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 147
    const-string v2, "IntelligentScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCheckChanged desiredState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 150
    .local v1, value:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "accelerometer_rotation"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 151
    .local v0, isAutoRotation:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "intelligent_screen_mode"

    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    if-eqz p2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 155
    iget-object v2, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 161
    :goto_1
    if-nez v0, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 164
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 151
    goto :goto_0

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 158
    iget-object v2, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IntelligentScreen;->addPreferencesFromResource(I)V

    .line 57
    const-string v0, "intelligent_sleep"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IntelligentScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mSleep:Landroid/preference/CheckBoxPreference;

    .line 58
    const-string v0, "intelligent_rotation"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IntelligentScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mRotation:Landroid/preference/CheckBoxPreference;

    .line 59
    const-string v0, "intelligent_help"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IntelligentScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mHelp:Landroid/preference/PreferenceScreen;

    .line 60
    const-string v0, "IntelligentScreen"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 106
    const-string v0, "IntelligentScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 170
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, key:Ljava/lang/String;
    const-string v6, "IntelligentScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v6, "intelligent_sleep"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 175
    .local v2, isSleep:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_sleep_mode"

    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    .end local v2           #isSleep:Z
    :cond_1
    :goto_0
    return v5

    .line 177
    .restart local p2
    :cond_2
    const-string v6, "intelligent_rotation"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 181
    .local v1, isRotation:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, isAutoRotation:I
    if-ne v5, v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    if-eqz v1, :cond_3

    move v4, v5

    :cond_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 189
    .end local v0           #isAutoRotation:I
    .end local v1           #isRotation:Z
    .restart local p2
    :cond_4
    const-string v4, "intelligent_help"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 190
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0

    .line 193
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 97
    const-string v0, "IntelligentScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/OriginalSettings/IntelligentScreen;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    invoke-direct {p0}, Lcom/android/OriginalSettings/IntelligentScreen;->updateState()V

    .line 101
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 92
    return-void
.end method

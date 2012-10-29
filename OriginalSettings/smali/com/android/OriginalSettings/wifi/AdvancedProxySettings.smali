.class public Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "AdvancedProxySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPreferenceKeys:[Ljava/lang/String;

.field private mSettingNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "wifi_exception_proxy1"

    aput-object v1, v0, v2

    const-string v1, "wifi_exception_proxy2"

    aput-object v1, v0, v3

    const-string v1, "wifi_exception_proxy3"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    .line 60
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "wifi_exception_proxy1"

    aput-object v1, v0, v2

    const-string v1, "wifi_exception_proxy2"

    aput-object v1, v0, v3

    const-string v1, "wifi_exception_proxy3"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    return-void
.end method

.method private updateSettingsProvider()V
    .locals 5

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 150
    .local v2, preference:Landroid/preference/EditTextPreference;
    if-eqz v2, :cond_0

    .line 151
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 5

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 134
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, settingValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 137
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v2, 0x7f070060

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->addPreferencesFromResource(I)V

    .line 72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 74
    .local v1, preference:Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onDestroy()V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->updateSettingsProvider()V

    .line 95
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v2, p2

    .line 108
    check-cast v2, Ljava/lang/String;

    .line 110
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->mSettingNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 111
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 84
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedProxySettings;->updateUi()V

    .line 85
    return-void
.end method

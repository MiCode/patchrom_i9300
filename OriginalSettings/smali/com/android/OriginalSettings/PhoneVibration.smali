.class public Lcom/android/OriginalSettings/PhoneVibration;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PhoneVibration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mCreatePattern:Landroid/preference/PreferenceScreen;

.field select_pattern_value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/PhoneVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/PhoneVibration;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PhoneVibration;->addPreferencesFromResource(I)V

    .line 63
    const-string v0, "create_pattern"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/PhoneVibration;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/OriginalSettings/PhoneVibration;->mCreatePattern:Landroid/preference/PreferenceScreen;

    .line 64
    iget-object v0, p0, Lcom/android/OriginalSettings/PhoneVibration;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_pattern_vibration"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/PhoneVibration;->select_pattern_value:I

    .line 65
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 80
    const-string v1, "PhoneVibration"

    const-string v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, key:Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 74
    const-string v0, "PhoneVibration"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 70
    return-void
.end method

.class public Lcom/android/OriginalSettings/WirelessSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

.field private mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

.field private mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

.field private mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 161
    invoke-static {p0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 467
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 468
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 470
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 473
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .parameter "savedInstanceState"

    .prologue
    .line 172
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v1, 0x7f07006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 198
    .local v2, activity:Landroid/app/Activity;
    const-string v1, "toggle_airplane"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 199
    const-string v1, "toggle_nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 200
    .local v3, nfc:Landroid/preference/CheckBoxPreference;
    const-string v1, "toggle_nfc_rw_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    .line 201
    const-string v1, "android_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 202
    .local v5, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v1, "s_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 203
    .local v6, sBeam:Landroid/preference/PreferenceScreen;
    const-string v1, "toggle_wifi_p2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/CheckBoxPreference;

    .line 204
    .local v21, wifiP2p:Landroid/preference/CheckBoxPreference;
    const-string v1, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/SwitchPreference;

    .line 205
    .local v22, wifiP2pSetting:Landroid/preference/SwitchPreference;
    const-string v1, "roaming_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    .line 206
    .local v17, roamingSetting:Landroid/preference/PreferenceScreen;
    const-string v1, "rcs_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceScreen;

    .line 208
    .local v16, rcsSetting:Landroid/preference/PreferenceScreen;
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 209
    .local v19, salesCode:Ljava/lang/String;
    const-string v1, "CHN"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "sleeping_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_2
    new-instance v1, Lcom/android/OriginalSettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, v2, v4}, Lcom/android/OriginalSettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_12

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    new-instance v1, Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/android/OriginalSettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 234
    :goto_0
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 238
    .local v20, toggleable:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110043

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 240
    .local v9, isWimaxEnabled:Z
    if-nez v9, :cond_13

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 242
    .local v18, root:Landroid/preference/PreferenceScreen;
    const-string v1, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 243
    .local v15, ps:Landroid/preference/Preference;
    if-eqz v15, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    .end local v15           #ps:Landroid/preference/Preference;
    .end local v18           #root:Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_1
    if-eqz v20, :cond_4

    const-string v1, "wifi"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 253
    :cond_4
    const-string v1, "vpn_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 254
    const-string v1, "CHM"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 255
    const-string v1, "kies_via_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 256
    const-string v1, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 257
    const-string v1, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 262
    :cond_5
    if-eqz v20, :cond_6

    const-string v1, "bluetooth"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 267
    :cond_6
    if-eqz v20, :cond_7

    const-string v1, "nfc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 268
    :cond_7
    const-string v1, "toggle_nfc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 270
    :cond_8
    const-string v1, "android_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "toggle_airplane"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 272
    const-string v1, "s_beam_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v4, "android_beam_settings"

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 281
    :cond_9
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_c

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    if-eqz v6, :cond_a

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 294
    :cond_c
    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "mobile_network_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 300
    :cond_d
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.sec.android.app.kieswifi"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_e
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.wifi.direct"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "allshare_cast_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    const-string v1, "proxy_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 328
    .local v12, mGlobalProxy:Landroid/preference/Preference;
    const-string v1, "device_policy"

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 331
    .local v11, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v12, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 335
    const-string v1, "connectivity"

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 337
    .local v7, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v2}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 338
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 382
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Setting_EnableRoamingMenu"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v17, :cond_10

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v4, "roaming_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_10
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 388
    const-string v1, "parent"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    .line 389
    .local v14, parent:Landroid/preference/PreferenceScreen;
    new-instance v1, Lcom/android/OriginalSettings/rcs/RcsSettings;

    invoke-direct {v1, v2, v14}, Lcom/android/OriginalSettings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

    .line 393
    .end local v14           #parent:Landroid/preference/PreferenceScreen;
    :cond_11
    :goto_6
    return-void

    .line 227
    .end local v7           #cm:Landroid/net/ConnectivityManager;
    .end local v9           #isWimaxEnabled:Z
    .end local v11           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #mGlobalProxy:Landroid/preference/Preference;
    .end local v20           #toggleable:Ljava/lang/String;
    :cond_12
    new-instance v1, Lcom/android/OriginalSettings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct/range {v1 .. v6}, Lcom/android/OriginalSettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    goto/16 :goto_0

    .line 245
    .restart local v9       #isWimaxEnabled:Z
    .restart local v20       #toggleable:Ljava/lang/String;
    :cond_13
    if-eqz v20, :cond_14

    const-string v1, "wimax"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v9, :cond_3

    .line 247
    :cond_14
    const-string v1, "wimax_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 248
    .restart local v15       #ps:Landroid/preference/Preference;
    const-string v1, "toggle_airplane"

    invoke-virtual {v15, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    .end local v15           #ps:Landroid/preference/Preference;
    :catch_0
    move-exception v8

    .line 302
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "kies_via_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 303
    .local v10, kiesViaWifi:Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_e

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 314
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #kiesViaWifi:Landroid/preference/PreferenceScreen;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    new-instance v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    move-object/from16 v0, v22

    invoke-direct {v1, v2, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    goto/16 :goto_3

    .line 332
    .restart local v11       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #mGlobalProxy:Landroid/preference/Preference;
    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 340
    .restart local v7       #cm:Landroid/net/ConnectivityManager;
    :cond_17
    const-string v1, "tether_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 341
    .local v13, p:Landroid/preference/Preference;
    invoke-static {v7}, Lcom/android/OriginalSettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_5

    .line 390
    .end local v13           #p:Landroid/preference/Preference;
    :cond_18
    if-eqz v16, :cond_11

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 441
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->pause()V

    .line 442
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->pause()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->pause()V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/rcs/RcsSettings;->unregisterRcsProviderObserver()V

    .line 463
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 109
    const-string v4, "mobile_network_settings"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne p2, v4, :cond_1

    .line 110
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 111
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 112
    .local v1, simState:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v3, :cond_1

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_1

    .line 115
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0d0742

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0743

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    .end local v0           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v1           #simState:I
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4, v3}, Lcom/android/OriginalSettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 398
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 400
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->resume()V

    .line 401
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->resume()V

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->resume()V

    .line 421
    :cond_1
    :try_start_0
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 423
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const-string v2, "vpn_settings"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

    if-eqz v2, :cond_2

    .line 432
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    .line 433
    iget-object v2, p0, Lcom/android/OriginalSettings/WirelessSettings;->mRcsSettings:Lcom/android/OriginalSettings/rcs/RcsSettings;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/rcs/RcsSettings;->registerRcsProviderObserver()V

    .line 435
    :cond_2
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

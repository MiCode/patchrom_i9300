.class public Lcom/android/OriginalSettings/wifi/SelectAP;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SelectAP.java"


# instance fields
.field private ap_address:Ljava/lang/String;

.field private ap_bssid:Ljava/lang/String;

.field private ap_cid:Ljava/lang/String;

.field private ap_ssid:Ljava/lang/String;

.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field mSelectedDataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;

.field scan_ap:Landroid/preference/Preference;

.field ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

.field wm:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/SelectAP;->addPreferencesFromResource(I)V

    .line 79
    const-string v0, "select_wifi_ap"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/SelectAP;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    const v1, 0x7f0d0206

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setNoDeviceFoundText(I)V

    .line 81
    const-string v0, "select_ap_dialog_scan_network"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/SelectAP;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->scan_ap:Landroid/preference/Preference;

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 84
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->wm:Landroid/net/wifi/WifiManager;

    .line 85
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->populateAllProfiles()V

    .line 86
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    const-string v0, "SelectAP"

    const-string v1, "SelectAP, RESULT_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->populateAllProfiles()V

    .line 173
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 102
    instance-of v2, p2, Lcom/android/OriginalSettings/wifi/DataPoint;

    if-eqz v2, :cond_1

    .line 103
    check-cast p2, Lcom/android/OriginalSettings/wifi/DataPoint;

    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/DataPoint;->ssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_ssid:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/DataPoint;->bssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_bssid:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/DataPoint;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_address:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mSelectedDataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/DataPoint;->cid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_cid:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_ssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_cid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_bssid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 110
    const-string v0, "SSID"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v0, "BSSID"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_bssid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v0, "ADDRESS"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_address:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v0, "CID"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ap_cid:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/SelectApDialog;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/OriginalSettings/wifi/SelectApDialog;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->finish()V

    :goto_0
    move v0, v1

    .line 142
    :goto_1
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d0a6f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/OriginalSettings/wifi/SelectAP$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/SelectAP$2;-><init>(Lcom/android/OriginalSettings/wifi/SelectAP;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/wifi/SelectAP$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/SelectAP$1;-><init>(Lcom/android/OriginalSettings/wifi/SelectAP;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 135
    :cond_1
    const-string v2, "select_ap_dialog_scan_network"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/wifi/WifiPickerDialog;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/SelectAP;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 91
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    const v1, 0x7f0d0a55

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/ProgressCategory;->setNoDeviceFoundText(I)V

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->populateAllProfiles()V

    .line 96
    return-void
.end method

.method public populateAllProfiles()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v3, :cond_2

    .line 147
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 149
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 151
    .local v11, r:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 152
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 153
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    const-string v2, "SelectAP"

    const-string v3, "Database Entries added"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v1, entry:Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;
    new-instance v10, Lcom/android/OriginalSettings/wifi/DataPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/SelectAP;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2, v1}, Lcom/android/OriginalSettings/wifi/DataPoint;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;)V

    .line 157
    .local v10, dataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;
    if-eqz v10, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/SelectAP;->ssidCidPair:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v2, v10}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 160
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 162
    .end local v1           #entry:Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;
    .end local v10           #dataPoint:Lcom/android/OriginalSettings/wifi/DataPoint;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 165
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v11           #r:Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.class public Lcom/android/OriginalSettings/wifi/WifiPowerSave;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiPowerSave.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final Null:Ljava/lang/String;

.field private cellAvailable:Z

.field entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;",
            ">;"
        }
    .end annotation
.end field

.field private generator:Ljava/util/Random;

.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mProgress:Lcom/android/OriginalSettings/ProgressCategory;

.field private mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

.field mUseWifiLocation:Landroid/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field notificationManager:Landroid/app/NotificationManager;

.field private tm:Landroid/telephony/TelephonyManager;

.field value:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->Null:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->cellAvailable:Z

    return-void
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 261
    const-string v2, "wifi_enable_location"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    .line 262
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "wifi_auto_connection"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 265
    const-string v2, "wifi_power_save_database"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/ProgressCategory;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    .line 266
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    const v4, 0x7f0d0a55

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setNoDeviceFoundText(I)V

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "wifi_auto_connection"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0d0591

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->populateProfiles()V

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v0, mServiceStartIntent:Landroid/content/Intent;
    const-string v2, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 287
    .end local v0           #mServiceStartIntent:Landroid/content/Intent;
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 263
    goto :goto_0

    .line 277
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0d0592

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 278
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v2, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    const-string v2, "WifiPowerSave"

    const-string v3, "Power Save mode OFF"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v1, mServiceStopIntent:Landroid/content/Intent;
    const-string v2, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method


# virtual methods
.method forgetProfile(Ljava/lang/String;)V
    .locals 13
    .parameter "profile"

    .prologue
    const/4 v12, 0x7

    const/4 v2, 0x0

    .line 457
    if-eqz p1, :cond_2

    .line 458
    const-string v1, "WifiPowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing Profile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 460
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 461
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 462
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 466
    .local v9, row:J
    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 467
    .local v11, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 468
    .local v8, initialValues:Landroid/content/ContentValues;
    const-string v1, "profile"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->Null:Ljava/lang/String;

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, v11, v8, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 470
    .local v7, i:I
    if-lez v7, :cond_0

    const-string v1, "WifiPowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile forgotten: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    .end local v7           #i:I
    .end local v8           #initialValues:Landroid/content/ContentValues;
    .end local v9           #row:J
    .end local v11           #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 474
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 140
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->tm:Landroid/telephony/TelephonyManager;

    .line 141
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->notificationManager:Landroid/app/NotificationManager;

    .line 142
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->generator:Ljava/util/Random;

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->entries:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mEmptyView:Landroid/widget/TextView;

    .line 149
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->registerForContextMenu(Landroid/view/View;)V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->setHasOptionsMenu(Z)V

    .line 155
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 481
    invoke-super/range {p0 .. p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 482
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_2

    .line 484
    const-string v3, "PROFILE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 485
    .local v15, profile:Ljava/lang/String;
    const-string v3, "SSID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 486
    .local v11, apSsid:Ljava/lang/String;
    const-string v3, "BSSID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, apBssid:Ljava/lang/String;
    const-string v3, "ADDRESS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, apAddress:Ljava/lang/String;
    const-string v3, "CID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 489
    .local v10, apCid:Ljava/lang/String;
    if-eqz v9, :cond_2

    if-eqz v15, :cond_2

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 491
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 492
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 493
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 494
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 495
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 497
    .local v16, row:J
    sget-object v3, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 498
    .local v18, uri:Landroid/net/Uri;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 499
    .local v14, initialValues:Landroid/content/ContentValues;
    const-string v3, "profile"

    invoke-virtual {v14, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 501
    .local v13, i:I
    if-lez v13, :cond_0

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->populateProfiles()V

    .line 503
    const-string v3, "WifiPowerSave"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry updated at row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with, PROFILE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SSID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ADDRESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v13           #i:I
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .end local v16           #row:J
    .end local v18           #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 508
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 513
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v8           #apAddress:Ljava/lang/String;
    .end local v9           #apBssid:Ljava/lang/String;
    .end local v10           #apCid:Ljava/lang/String;
    .end local v11           #apSsid:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #profile:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 257
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 242
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->forgetProfile(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->populateProfiles()V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0a68

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/Profile;->profile:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/Profile;->ssid:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v5, v5, Lcom/android/OriginalSettings/wifi/Profile;->address:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/wifi/WifiPowerSave$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiPowerSave;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->addPreferencesFromResource(I)V

    .line 134
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 230
    .local v0, preference:Landroid/preference/Preference;
    check-cast v0, Lcom/android/OriginalSettings/wifi/Profile;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    .line 231
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 232
    const/4 v1, 0x4

    const v2, 0x7f0d0a67

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 233
    const/4 v1, 0x5

    const v2, 0x7f0d0a66

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 234
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    const v0, 0x7f0d0978

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 167
    const/4 v0, 0x6

    const v1, 0x7f0d069a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 174
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 175
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 221
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 181
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/wifi/AddConnection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 186
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/wifi/DeleteConnection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 310
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->value:Z

    .line 312
    const-string v6, "wifi_enable_location"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_auto_connection"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->value:Z

    if-eqz v6, :cond_1

    move v6, v5

    :goto_0
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->value:Z

    if-eqz v4, :cond_2

    .line 322
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0d0591

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->populateProfiles()V

    .line 325
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v2, mServiceStartIntent1:Landroid/content/Intent;
    const-string v4, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v2           #mServiceStartIntent1:Landroid/content/Intent;
    :goto_1
    move v4, v5

    .line 338
    :goto_2
    return v4

    :cond_1
    move v6, v4

    .line 314
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 329
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mUseWifiLocation:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0d0592

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 330
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v4, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    const-string v4, "WifiPowerSave"

    const-string v6, "Power Save mode OFF"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 335
    .local v3, mServiceStopIntent1:Landroid/content/Intent;
    const-string v4, "com.android.settings.wifi.LocationProvidingService"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    .line 292
    instance-of v1, p2, Lcom/android/OriginalSettings/wifi/Profile;

    if-eqz v1, :cond_0

    .line 293
    check-cast p2, Lcom/android/OriginalSettings/wifi/Profile;

    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    .line 294
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 295
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/wifi/AddConnection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 296
    const-string v2, "PROFILE"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/Profile;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v2, "BSSID"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/Profile;->bssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v2, "CID"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/Profile;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v2, "ADDRESS"

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mSelectedProfile:Lcom/android/OriginalSettings/wifi/Profile;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/Profile;->address:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->startActivityForResult(Landroid/content/Intent;I)V

    .line 305
    :goto_0
    return v0

    .line 303
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 160
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->initPreferences()V

    .line 161
    return-void
.end method

.method public populateProfiles()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v3, :cond_2

    .line 344
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    .line 345
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 346
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    const v4, 0x7f0d0a55

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/ProgressCategory;->setNoDeviceFoundText(I)V

    .line 350
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 352
    .local v11, r:Landroid/database/Cursor;
    if-eqz v11, :cond_2

    .line 353
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 354
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
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

    .line 356
    .local v1, entry:Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;
    if-eqz v1, :cond_0

    .line 357
    new-instance v10, Lcom/android/OriginalSettings/wifi/Profile;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v10, v2, v1}, Lcom/android/OriginalSettings/wifi/Profile;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;)V

    .line 358
    .local v10, prof:Lcom/android/OriginalSettings/wifi/Profile;
    if-eqz v10, :cond_0

    iget-object v2, v10, Lcom/android/OriginalSettings/wifi/Profile;->profile:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiPowerSave;->mProgress:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v2, v10}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    const-string v2, "WifiPowerSave"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Profile added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/android/OriginalSettings/wifi/Profile;->profile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v10           #prof:Lcom/android/OriginalSettings/wifi/Profile;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 365
    .end local v1           #entry:Lcom/android/OriginalSettings/wifi/WifiDatabaseEntries;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 368
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v11           #r:Landroid/database/Cursor;
    :cond_2
    return-void
.end method

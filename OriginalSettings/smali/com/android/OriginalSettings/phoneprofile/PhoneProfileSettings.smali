.class public Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PhoneProfileSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mInitHandler:Landroid/os/Handler;

.field private mMaxProfile:I

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mProfileList:Landroid/preference/PreferenceGroup;

.field private mSelectedKey:Ljava/lang/String;

.field private mSelectedProfile:I

.field profileName:[I

.field profilekey:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 74
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "driving"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "meeting"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "outdoor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mute"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->profilekey:[Ljava/lang/String;

    .line 92
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->profileName:[I

    .line 112
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$1;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$2;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mInitHandler:Landroid/os/Handler;

    return-void

    .line 92
    nop

    :array_0
    .array-data 0x4
        0x28t 0x8t 0xdt 0x7ft
        0x62t 0x9t 0xdt 0x7ft
        0x63t 0x9t 0xdt 0x7ft
        0x64t 0x9t 0xdt 0x7ft
        0x65t 0x9t 0xdt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->onAirplaneModeChanged()V

    return-void
.end method

.method private fillList()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 166
    const-string v0, "phone_profile_list"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    .line 167
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_profile_mode"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    .line 168
    iget v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 171
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "profile_mode"

    aput-object v4, v2, v11

    const-string v4, "profile_name"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    const/4 v7, 0x0

    .line 175
    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    const-string v0, "profile_mode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 177
    .local v8, mode:I
    new-instance v10, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;-><init>(Landroid/content/Context;)V

    .line 179
    .local v10, pref:Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;
    const/4 v0, 0x5

    if-ge v7, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->profileName:[I

    aget v0, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setKey(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v10, v11}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setPersistent(Z)V

    .line 189
    invoke-virtual {v10, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    invoke-virtual {v10, v12}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setSelectable(Z)V

    .line 192
    iget v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    if-ne v0, v8, :cond_0

    .line 193
    invoke-virtual {v10}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setChecked()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 197
    add-int/lit8 v7, v7, 0x1

    .line 198
    goto :goto_0

    .line 183
    :cond_1
    const-string v0, "profile_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 184
    .local v9, name:Ljava/lang/String;
    invoke-virtual {v10, v9}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 199
    .end local v8           #mode:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #pref:Lcom/android/OriginalSettings/phoneprofile/PhoneProfilePreference;
    :cond_2
    iput v7, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mMaxProfile:I

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    const-string v1, "toggle_airplane"

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setKey(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setTitle(I)V

    .line 206
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0, v11}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setPersistent(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mProfileList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 211
    return-void
.end method

.method public static getConfigRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 14
    .parameter "context"
    .parameter "ringtone"

    .prologue
    .line 500
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 501
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 502
    .local v10, defaultRingtoneFilename:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 508
    .local v12, path:Ljava/lang/String;
    :goto_0
    const-wide/16 v6, 0x0

    .line 509
    .local v6, audio_id:J
    const/4 v13, 0x0

    .line 510
    .local v13, ringUri:Landroid/net/Uri;
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 512
    .local v8, baseUri:Landroid/net/Uri;
    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigRingtoneUri(): defaultRingtoneFilename ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 518
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 519
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 522
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 530
    .end local v9           #c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_3

    .line 531
    invoke-static {v8, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 533
    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigRingtoneUri(): ringUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_2
    return-object v13

    .line 505
    .end local v6           #audio_id:J
    .end local v8           #baseUri:Landroid/net/Uri;
    .end local v10           #defaultRingtoneFilename:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #ringUri:Landroid/net/Uri;
    :cond_2
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 506
    .restart local v10       #defaultRingtoneFilename:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12       #path:Ljava/lang/String;
    goto/16 :goto_0

    .line 524
    .restart local v6       #audio_id:J
    .restart local v8       #baseUri:Landroid/net/Uri;
    .restart local v13       #ringUri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 525
    .local v11, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteFullException getConfigRingtoneUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 526
    .end local v11           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v11

    .line 527
    .local v11, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteDiskIOException getConfigRingtoneUri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 537
    .end local v11           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_3
    const-string v0, "PhoneProfileSettings"

    const-string v1, "getConfigRingtoneUri(): audio_id == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 477
    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 478
    .local v1, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v0, v2

    .line 479
    .local v0, airplaneModeEnabled:Z
    :goto_0
    const-string v3, "PhoneProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAirplaneModeChanged : serviceState.getState() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v3, "PhoneProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAirplaneModeChanged : airplaneModeEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v3, v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setEnabled(Z)V

    .line 482
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    sget-object v3, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setForceChecked(Z)V

    .line 483
    return-void

    .line 478
    .end local v0           #airplaneModeEnabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPhoneProfileMode(Landroid/content/ContentResolver;Landroid/media/AudioManager;I)V
    .locals 21
    .parameter "cr"
    .parameter "audioManager"
    .parameter "mode"

    .prologue
    .line 415
    const-string v2, "sound_profile_mode"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    sget-object v3, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 418
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    const-string v2, "profile_silent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 420
    .local v14, silent:I
    const-string v2, "profile_vibration"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 421
    .local v16, vibrationType:I
    const-string v2, "profile_ring_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 422
    .local v19, volRing:I
    const-string v2, "profile_system_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 423
    .local v20, volSys:I
    const-string v2, "profile_music_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 424
    .local v17, volMusic:I
    const-string v2, "profile_hph_music_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 425
    .local v9, hphVolMusic:I
    const-string v2, "profile_notification_volume"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 426
    .local v18, volNoti:I
    const-string v2, "profile_notification_use_ring_vol"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 427
    .local v15, useRingvol:I
    const-string v2, "profile_ringtone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 428
    .local v12, mRingtoneUriString:Ljava/lang/String;
    const-string v2, "profile_gsm_ringtone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 429
    .local v11, mRingtone1UriString:Ljava/lang/String;
    const-string v2, "profile_video_ringtone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 430
    .local v13, mVideoRingtoneUriString:Ljava/lang/String;
    const-string v2, "profile_notification_tone"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 431
    .local v10, mNotiUriString:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 433
    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 434
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 435
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 436
    const/16 v2, 0xd

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v3}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    .line 437
    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    .line 439
    const/4 v2, 0x1

    if-ne v15, v2, :cond_0

    .line 440
    const/4 v2, 0x5

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 443
    :cond_0
    const-string v2, "ringtone"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 449
    const-string v2, "notification_sound"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 451
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 452
    return-void
.end method

.method private setSelectedKey(Ljava/lang/String;)V
    .locals 23
    .parameter "key"

    .prologue
    .line 359
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_profile_mode"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 368
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 369
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 370
    const-string v3, "profile_silent"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 371
    .local v16, silent:I
    const-string v3, "profile_vibration"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 372
    .local v18, vibrationType:I
    const-string v3, "profile_ring_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 373
    .local v21, volRing:I
    const-string v3, "profile_system_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 374
    .local v22, volSys:I
    const-string v3, "profile_music_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 375
    .local v19, volMusic:I
    const-string v3, "profile_hph_music_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 376
    .local v10, hphVolMusic:I
    const-string v3, "profile_notification_volume"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 377
    .local v20, volNoti:I
    const-string v3, "profile_notification_use_ring_vol"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 378
    .local v17, useRingvol:I
    const-string v3, "profile_ringtone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 379
    .local v14, mRingtoneUriString:Ljava/lang/String;
    const-string v3, "profile_gsm_ringtone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 380
    .local v13, mRingtone1UriString:Ljava/lang/String;
    const-string v3, "profile_video_ringtone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 381
    .local v15, mVideoRingtoneUriString:Ljava/lang/String;
    const-string v3, "profile_notification_tone"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 382
    .local v12, mNotiUriString:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x5

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v10, v5}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolumeForce(III)V

    .line 389
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 393
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ringtone"

    invoke-static {v3, v4, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_sound"

    invoke-static {v3, v4, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 403
    new-instance v11, Landroid/content/Intent;

    const-string v3, "com.android.widget.PROFILE_CHANGED"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v11, intent:Landroid/content/Intent;
    const-string v3, "mode"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mSelectedProfile:I

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 406
    .local v8, context:Landroid/content/Context;
    if-nez v8, :cond_1

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {v8, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public checkProfileName()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "profile_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 545
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 546
    const/4 v8, 0x0

    .line 547
    .local v8, i:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    const-string v0, "profile_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 549
    .local v9, name:Ljava/lang/String;
    const/4 v0, 0x5

    if-lt v8, v0, :cond_1

    .line 550
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 552
    .local v10, row:I
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, v10

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 553
    .local v6, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 556
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v10           #row:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 557
    add-int/lit8 v8, v8, 0x1

    .line 558
    goto :goto_0

    .line 559
    .end local v9           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 560
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 274
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 275
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 277
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->setAirplaneModeInECM(ZZ)V

    .line 280
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->addPreferencesFromResource(I)V

    .line 140
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 141
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->setHasOptionsMenu(Z)V

    .line 143
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mInitHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->checkProfileName()V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 284
    const-string v0, "PhoneProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-object p1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 287
    const/4 v0, 0x1

    const v1, 0x7f0d0978

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 301
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x7

    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 355
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 324
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 325
    const-string v0, "state"

    const-string v4, "add"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v0, "PhoneProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadModeSettings() => create DB  max:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mMaxProfile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 329
    const-string v0, "profile_silent"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v0, "profile_vibration"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v0, "profile_ring_volume"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v0, "profile_system_volume"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v0, "profile_music_volume"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v0, "profile_notification_volume"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    const-string v0, "profile_notification_use_ring_vol"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v0, "profile_hph_music_volume"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getConfigRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 338
    const-string v6, "profile_ringtone"

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v6, "profile_gsm_ringtone"

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v6, "profile_video_ringtone"

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getConfigRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 342
    const-string v5, "profile_notification_tone"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/ProviderConstants;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 347
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "sound_profile_edit_mode"

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 351
    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    .line 338
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 339
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 340
    goto :goto_3

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 163
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    .end local p2
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 229
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 230
    .local v2, value:Z
    if-eqz v2, :cond_2

    const v1, 0x7f0d07ba

    .line 231
    .local v1, resMsg:I
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0d0112

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 234
    const v3, 0x104000a

    new-instance v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;

    invoke-direct {v4, p0, v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$3;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$4;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$4;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    new-instance v3, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings$5;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 260
    const/4 v3, 0x0

    goto :goto_1

    .line 230
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #resMsg:I
    :cond_2
    const v1, 0x7f0d07bb

    goto :goto_2

    .line 264
    .end local v2           #value:Z
    .restart local p2
    :cond_3
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 265
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->setSelectedKey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->updateOptionsMenu()V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 154
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->fillList()V

    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setEnabled(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->updateOptionsMenu()V

    .line 157
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 486
    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->setAirplaneModeOn(Z)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public setAirplaneModeOn(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    const/4 v1, 0x0

    .line 461
    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mAirplane:Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileCheckPreference;->setEnabled(Z)V

    .line 464
    sget-object v2, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 470
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 471
    return-void
.end method

.method updateOptionsMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 304
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mMaxProfile:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

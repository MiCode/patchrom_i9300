.class public Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;
.super Lmiui/preference/BasePreferenceActivity;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentMode:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mState:I

.field profileName:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 117
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->profileName:[I

    .line 125
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$1;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$2;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    return-void

    .line 117
    :array_0
    .array-data 0x4
        0x28t 0x8t 0xdt 0x7ft
        0x62t 0x9t 0xdt 0x7ft
        0x63t 0x9t 0xdt 0x7ft
        0x64t 0x9t 0xdt 0x7ft
        0x65t 0x9t 0xdt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 452
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    const-string p1, ""

    .line 455
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 460
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 461
    :cond_0
    sget-object p1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 463
    .end local p1
    :cond_1
    return-object p1
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_silent"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 364
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 365
    const-string v1, "profile_silent"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 366
    .local v7, vibrationType:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 368
    packed-switch v7, :pswitch_data_0

    .line 377
    const-string v1, "off"

    :goto_0
    return-object v1

    .line 370
    :pswitch_0
    const-string v1, "off"

    goto :goto_0

    .line 372
    :pswitch_1
    const-string v1, "vibrate"

    goto :goto_0

    .line 374
    :pswitch_2
    const-string v1, "mute"

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 437
    return-void
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .locals 12
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 328
    const/4 v8, 0x2

    .line 329
    .local v8, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    const/4 v8, 0x0

    .line 335
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    iget v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    if-ne v1, v2, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 339
    :cond_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_2

    .line 340
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_ring_volume"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 342
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 343
    const-string v1, "profile_ring_volume"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 344
    .local v9, ringtoneVolume:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 345
    if-nez v9, :cond_2

    .line 346
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "profile_ring_volume"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 349
    .local v6, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 353
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #ringtoneVolume:I
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v1, "profile_silent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 356
    .restart local v6       #_uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 357
    return-void

    .line 331
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 468
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d042e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d097c

    new-instance v2, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$4;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$4;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 482
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 11
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 394
    if-nez p2, :cond_0

    .line 433
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 401
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_2

    .line 402
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_ringtone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 403
    .local v9, ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 404
    const-string v1, "profile_ringtone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, ringtone:Ljava/lang/String;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 412
    if-eqz v8, :cond_3

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 413
    .local v2, ringtoneUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x104049d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 415
    .local v10, summary:Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    .line 416
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x104049b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 432
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 407
    .end local v2           #ringtoneUri:Landroid/net/Uri;
    .end local v8           #ringtone:Ljava/lang/String;
    .end local v9           #ringtoneCursor:Landroid/database/Cursor;
    .end local v10           #summary:Ljava/lang/CharSequence;
    :cond_2
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_notification_tone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 408
    .restart local v9       #ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 409
    const-string v1, "profile_notification_tone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ringtone:Ljava/lang/String;
    goto :goto_1

    :cond_3
    move-object v2, v4

    .line 412
    goto :goto_2

    .line 420
    .restart local v2       #ringtoneUri:Landroid/net/Uri;
    .restart local v10       #summary:Ljava/lang/CharSequence;
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 422
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 423
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 424
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 426
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 428
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method private updateState(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    if-ne v0, v1, :cond_0

    .line 387
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 304
    iget-object v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 308
    .local v1, errorMsg:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d097b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    :cond_0
    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    if-eqz v1, :cond_1

    .line 313
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V

    .line 314
    const/4 v4, 0x0

    .line 324
    :goto_0
    return v4

    .line 317
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "profile_name"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v5, "profile_mode"

    iget v6, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    sget-object v5, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 321
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 323
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 159
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 162
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    .line 164
    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->addPreferencesFromResource(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 167
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iput v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mState:I

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0977

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 175
    const-string v1, "profile_name"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    .line 176
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    const-string v1, "silent_mode"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    .line 190
    iget v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->profileName:[I

    iget v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, mTitle:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 207
    :goto_2
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    .line 208
    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    .line 210
    new-instance v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor$3;-><init>(Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 222
    return-void

    .line 171
    .end local v8           #mTitle:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mState:I

    goto/16 :goto_0

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_name"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    .restart local v8       #mTitle:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v8}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 246
    iget v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 254
    :goto_0
    return v3

    .line 249
    :cond_0
    const v0, 0x7f0d097a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 251
    const/4 v0, 0x2

    const v1, 0x7f0d0979

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 289
    const-string v1, "PhoneProfileEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown keyCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 300
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/BasePreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 292
    :pswitch_0
    iget v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mState:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 293
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 284
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 262
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 269
    :pswitch_1
    iget v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 270
    sget-object v2, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 271
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    .end local v0           #_uri:Landroid/net/Uri;
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    iget v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    if-ne v2, v3, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_profile_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2, v3, v5}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileSettings;->setPhoneProfileMode(Landroid/content/ContentResolver;Landroid/media/AudioManager;I)V

    .line 277
    iput v5, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    .line 279
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 440
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 441
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 448
    :cond_0
    :goto_0
    return v2

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 228
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 229
    invoke-direct {p0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->lookupRingtoneNames()V

    .line 231
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    return-void
.end method

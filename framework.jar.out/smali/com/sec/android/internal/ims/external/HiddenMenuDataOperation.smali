.class public Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
.super Ljava/lang/Object;
.source "HiddenMenuDataOperation.java"


# instance fields
.field public LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "HiddenMenuDataOperation"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public deleteExistingRow(Landroid/content/ContentResolver;)I
    .locals 4
    .parameter "r1"

    .prologue
    const/4 v3, 0x0

    .line 77
    const/4 v0, 0x0

    .local v0, rowCount:I
    const/4 v1, 0x0

    .line 78
    .local v1, x:I
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getRowCount(Landroid/content/ContentResolver;)I

    move-result v0

    .line 79
    if-lez v0, :cond_0

    .line 81
    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_DEL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 83
    :cond_0
    return v1
.end method

.method public getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 13
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 170
    const/4 v11, 0x0

    .line 171
    .local v11, menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    sget-object v1, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    .local v6, c1:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 177
    new-instance v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v11           #menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v11}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 178
    .restart local v11       #menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 180
    const-string/jumbo v0, "mPrefCscfDns"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 181
    .local v7, coordIdx:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "mPrefCscfDnsforWiFi"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 184
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "mAlwaysOn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 187
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "mPrefCscfIp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 190
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, "mPrefCscfDomain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 206
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "mPrefCscfPort"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 209
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "mPrefCscfPortforLTE"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 212
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    .line 215
    const-string/jumbo v0, "mPrefCscfPortforWiFi"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 216
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    .line 218
    const-string/jumbo v0, "mPrefXdmDns"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 219
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    .line 221
    const-string/jumbo v0, "mPrefXdmIp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 222
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "mPrefXdmIpforWiFi"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 225
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    .line 227
    const-string/jumbo v0, "mPrefAudioCodec"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 228
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "mPrefVideoCodec"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 231
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "mLoopback"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 234
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "mEnableQos"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 237
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    .line 240
    iget-object v10, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    .line 241
    .local v10, mString:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP TIMERS String stored in DB Value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-nez v10, :cond_0

    .line 244
    sget-object v10, Lcom/sec/android/internal/ims/external/HiddenMenuData;->DefaultmEnableQos:Ljava/lang/String;

    .line 246
    :cond_0
    const-string v8, "$"

    .line 247
    .local v8, dollar:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 248
    .local v9, isContain:Z
    if-eqz v9, :cond_1

    .line 250
    const-string v0, "\\$"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 251
    .local v12, timerVals:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v12, v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerT1Val:Ljava/lang/String;

    .line 252
    const/4 v0, 0x1

    aget-object v0, v12, v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerT2Val:Ljava/lang/String;

    .line 253
    const/4 v0, 0x2

    aget-object v0, v12, v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSipTimerFVal:Ljava/lang/String;

    .line 255
    .end local v12           #timerVals:[Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "mVideoProfile"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 256
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    .line 258
    const-string/jumbo v0, "mAudioFirst"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 259
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    .line 261
    const-string/jumbo v0, "mQosAware"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 262
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    .line 264
    const-string/jumbo v0, "mVTDebugging"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 265
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    .line 267
    const-string/jumbo v0, "mAutoTest"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 268
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    .line 272
    const-string/jumbo v0, "mPrefNwType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 273
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefNwTypeVal:Ljava/lang/String;

    .line 275
    const-string/jumbo v0, "mCurrLatchedNw"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 276
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 278
    const-string/jumbo v0, "mAccessNwInfo"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 279
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 284
    const-string/jumbo v0, "mCurrDispFormat"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 285
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 287
    const-string/jumbo v0, "mFrameRate"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 288
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    .line 290
    const-string/jumbo v0, "mBitRate"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 291
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 293
    const-string/jumbo v0, "mDynamicBitRate"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 294
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDynamicBitRateVal:Ljava/lang/String;

    .line 297
    const-string/jumbo v0, "mAudioCodecMode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 298
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioCodecModeVal:Ljava/lang/String;

    .line 303
    const-string/jumbo v0, "mPublicUserIdentity"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 304
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    .line 306
    const-string/jumbo v0, "mPrivateUserIdentity"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 307
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 316
    const-string/jumbo v0, "mRegisterTimer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 317
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mRegisterTimerVal:Ljava/lang/String;

    .line 319
    const-string/jumbo v0, "mSubscriberTimer"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 320
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSubscriberTimerVal:Ljava/lang/String;

    .line 322
    const-string/jumbo v0, "mSessionExpire"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 323
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSessionExpireVal:Ljava/lang/String;

    .line 325
    const-string/jumbo v0, "mAudioPort"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 326
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioPortVal:Ljava/lang/String;

    .line 328
    const-string/jumbo v0, "mVideoPort"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 329
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoPortVal:Ljava/lang/String;

    .line 331
    const-string/jumbo v0, "mEnableIMSOnRoamingVal"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 332
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    .line 334
    .end local v7           #coordIdx:I
    .end local v8           #dollar:Ljava/lang/String;
    .end local v9           #isContain:Z
    .end local v10           #mString:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_3
    return-object v11
.end method

.method public getRowCount(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 58
    const/4 v7, 0x0

    .line 59
    .local v7, r:I
    sget-object v1, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 61
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 65
    :cond_0
    if-eqz v6, :cond_1

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_1
    return v7
.end method

.method public insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 5
    .parameter "obj"
    .parameter "r1"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 95
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v1, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "mPrefCscfDns"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v2, "mPrefCscfDnsforWiFi"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "mPrefCscfIp"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string/jumbo v2, "mPrefCscfDomain"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v2, "mPrefCscfPort"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v2, "mPrefCscfPortforLTE"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v2, "mPrefCscfPortforWiFi"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v2, "mPrefXdmDns"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v2, "mPrefXdmIp"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v2, "mPrefXdmIpforWiFi"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v2, "mPrefAudioCodec"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "mPrefVideoCodec"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v2, "mLoopback"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "mAlwaysOn"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v2, "mEnableQos"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "mVideoProfile"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v2, "mAudioFirst"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v2, "mQosAware"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "mVTDebugging"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v2, "mAutoTest"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string/jumbo v2, "mPrefNwType"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefNwTypeVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v2, "mCurrLatchedNw"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string/jumbo v2, "mAccessNwInfo"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v2, "mCurrDispFormat"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v2, "mFrameRate"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v2, "mBitRate"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v2, "mDynamicBitRate"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mDynamicBitRateVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "mAudioCodecMode"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioCodecModeVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v2, "mPublicUserIdentity"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v2, "mPrivateUserIdentity"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v2, "mRegisterTimer"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mRegisterTimerVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v2, "mSubscriberTimer"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSubscriberTimerVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v2, "mSessionExpire"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mSessionExpireVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v2, "mAudioPort"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioPortVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v2, "mVideoPort"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoPortVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v2, "mEnableIMSOnRoamingVal"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableIMSOnRoamingVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    .line 148
    iget-object v2, p0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Saved new values successfuly to HiddenMenu DataBase"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v0

    .line 150
    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HiddenMenu DataBase save operation failed!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "next value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 4
    .parameter "item"
    .parameter "value"
    .parameter "r1"

    .prologue
    const/4 v3, 0x0

    .line 156
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p3, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, result:I
    return v0
.end method

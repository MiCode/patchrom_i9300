.class public Lcom/android/internal/policy/impl/SamsungLockScreenProperties;
.super Ljava/lang/Object;
.source "SamsungLockScreenProperties.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mChecked:Z

.field private static mDivideMissedEventChecked:Z

.field private static mIsPLMNEnabledByCSC:Z

.field private static mIsSIMToastEnabled:Z

.field private static mIsSinaDaemonEnable:Z

.field private static mIsSinaDaemonEnableChecked:Z

.field private static mIsTablet:Z

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I

.field private static mSecureLockOnlyAfterTimerExpires:Z

.field private static mSecureLockOnlyAfterTimerExpiresChecked:Z

.field private static mShouldbeDisplaySalesCode:Z

.field private static mSwipeLockBeforeTimeout:Z

.field private static mSwipeLockBeforeTimeoutChecked:Z

.field private static mUseCtcPlmnConcept:Z

.field private static mUseCtcPlmnConceptChecked:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFail:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFailChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 31
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 32
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 33
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 34
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 36
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 37
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 39
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 40
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 42
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    .line 45
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 51
    const-string v0, "SamsungLockScreenProperties"

    sput-object v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    .line 57
    sput v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DisplayPlmn"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 61
    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_MANAGE_DONE"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, i:Landroid/content/Intent;
    const-string v5, "Booting"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    const-string v5, "settings.SIM_CARD_NETWORK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    const-string v5, "gsm.ruim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, mCDMAstate:Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, mGSMstate:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current network : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v5, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM state mCDMAstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mGSMstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 335
    const-string v5, "READY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    .restart local v0       #i:Landroid/content/Intent;
    const-string v4, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v4, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 337
    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #mCDMAstate:Ljava/lang/String;
    .restart local v2       #mGSMstate:Ljava/lang/String;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "CURRENT_NETWORK"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 352
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "SimRefreshCheck() return false"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 353
    goto :goto_1
.end method

.method public static freezeforPermBlockedSim()Z
    .locals 2

    .prologue
    .line 212
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    .line 216
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDualImsiString(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x5

    const/4 v7, 0x0

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, rilIMSI:Ljava/lang/String;
    new-array v3, v13, [Ljava/lang/String;

    .line 168
    .local v3, sponIMSI:[Ljava/lang/String;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 169
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_0

    .line 170
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_0
    const-string v9, "ril.simtype"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, simType:Ljava/lang/String;
    const-string v4, "[]"

    .line 177
    .local v4, srtingIMSI:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 178
    const-string v1, ""

    .line 181
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    move v0, v7

    .line 182
    .local v0, isAirplaneModeOn:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 183
    const-string v4, ""

    .line 184
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v8, "getDualImsiString(), isAirplaneModeOn is true, return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 208
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .local v5, srtingIMSI:Ljava/lang/String;
    :goto_1
    return-object v5

    .end local v0           #isAirplaneModeOn:Z
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_2
    move v0, v8

    .line 181
    goto :goto_0

    .line 188
    .restart local v0       #isAirplaneModeOn:Z
    :cond_3
    const-string v9, "3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 189
    const-string v4, ""

    .line 190
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDualImsiString(), SIM Type is not 3, simType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 191
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .restart local v5       #srtingIMSI:Ljava/lang/String;
    goto :goto_1

    .line 194
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 195
    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "450"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 196
    const-string v4, "[H]"

    .line 207
    :cond_5
    :goto_2
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDualImsiString(), srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 208
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .restart local v5       #srtingIMSI:Ljava/lang/String;
    goto :goto_1

    .line 197
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_6
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v3, v7

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 198
    const-string v4, "[S1]"

    goto :goto_2

    .line 199
    :cond_7
    aget-object v9, v3, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v8, v3, v8

    invoke-virtual {v8, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 200
    const-string v4, "[S2]"

    goto :goto_2

    .line 201
    :cond_8
    aget-object v8, v3, v12

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v3, v12

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 202
    const-string v4, "[S3]"

    goto :goto_2

    .line 204
    :cond_9
    const-string v4, "[]"

    goto :goto_2
.end method

.method public static getPINPUKRequest()Z
    .locals 3

    .prologue
    .line 370
    const-string v2, "gsm.ruim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, mCDMAstate:Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, mGSMstate:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    if-eqz v2, :cond_0

    .line 384
    const/4 v2, 0x1

    .line 386
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPINPUKSlot()I
    .locals 5

    .prologue
    .line 392
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, mCDMAtype:Ljava/lang/String;
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, mGSMtype:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    sget v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    return v2
.end method

.method public static getalternatePackageForMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleSimCardManagement(Landroid/content/Context;)V
    .locals 13
    .parameter "mContext"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SIM_MANAGE_DONE"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 418
    .local v5, mSIMManage:I
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSIMManage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v6, "gsm.ruim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, mCDMAstate:Ljava/lang/String;
    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 423
    .local v4, mGSMstate:Ljava/lang/String;
    if-ne v5, v11, :cond_1

    .line 424
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, currentChangei:Landroid/content/Intent;
    const-string v6, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 428
    const-string v6, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 435
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_NETWORK : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "CURRENT_NETWORK"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v0           #currentChangei:Landroid/content/Intent;
    :cond_1
    if-eq v5, v11, :cond_2

    if-eqz v2, :cond_2

    if-nez v4, :cond_4

    .line 497
    :cond_2
    :goto_1
    return-void

    .line 430
    .restart local v0       #currentChangei:Landroid/content/Intent;
    :cond_3
    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    const-string v6, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 440
    .end local v0           #currentChangei:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 441
    .local v3, mCurrent:I
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCDMAstate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGSMstate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 447
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v7, "AIRPLANE_MODE_ON******************"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 451
    :cond_5
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    :cond_6
    if-ne v3, v10, :cond_7

    .line 455
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    :cond_7
    :goto_2
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    :cond_8
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 471
    .local v1, i:Landroid/content/Intent;
    const-string v6, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v6, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 474
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SIM_MANAGE_DONE"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DSNETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DSNETWORK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "DSNETWORK"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 457
    .end local v1           #i:Landroid/content/Intent;
    :cond_a
    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 463
    :cond_b
    if-eq v3, v10, :cond_8

    .line 464
    if-nez v3, :cond_c

    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 466
    :cond_c
    if-ne v3, v11, :cond_8

    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method public static isCaMobile()Z
    .locals 2

    .prologue
    .line 220
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 225
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 524
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    :cond_0
    const/4 v1, 0x1

    .line 528
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 2

    .prologue
    .line 553
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    const/4 v1, 0x1

    .line 558
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 150
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, SalesCode:Ljava/lang/String;
    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, product_model:Ljava/lang/String;
    const-string v3, "LGT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    const-string v3, ""

    const-string v4, "SHV_E170L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E210L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 157
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    const/4 v3, 0x1

    .line 162
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDisplayUsimWidget()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 134
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, SalesCode:Ljava/lang/String;
    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, product_model:Ljava/lang/String;
    const-string v3, "SKT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "KTT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v2

    .line 140
    :cond_1
    const-string v3, "LGT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    const-string v3, ""

    const-string v4, "SHV_E170L"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "SHV-E210L"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDivideMissedEventEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, SalesCode:Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, CountryCode:Ljava/lang/String;
    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DBT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    :cond_0
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 309
    :cond_1
    const-string v2, "SKT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "KTT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LGT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    :cond_2
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 313
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    return v2
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 229
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    const/4 v1, 0x1

    .line 233
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKweatherEnable()Z
    .locals 4

    .prologue
    .line 290
    const-string v0, "kweather"

    .line 291
    .local v0, DAEMON_KWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v2, 0x1

    .line 297
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPLMNEnable()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isShouldbeDisplayForSalesCode()Z

    move-result v0

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 2

    .prologue
    .line 562
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 567
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    return v1
.end method

.method private static isShouldbeDisplayForSalesCode()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    if-nez v1, :cond_2

    .line 90
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, SalesCode:Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    if-nez v1, :cond_0

    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 128
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 130
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    return v1
.end method

.method public static isSinaEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 274
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    if-nez v1, :cond_2

    .line 275
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 284
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 286
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    return v1
.end method

.method public static isSprintDevice()Z
    .locals 2

    .prologue
    .line 579
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const/4 v1, 0x1

    .line 583
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTMODevice()Z
    .locals 2

    .prologue
    .line 516
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    const/4 v1, 0x1

    .line 520
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletDevice()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 501
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 502
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    return v2

    .line 505
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v3, "Failing check whether status bar can hide"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sput-boolean v4, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    goto :goto_0
.end method

.method public static isUSAFeature()Z
    .locals 2

    .prologue
    .line 532
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    :cond_0
    const/4 v1, 0x1

    .line 536
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVZWDevice()Z
    .locals 2

    .prologue
    .line 571
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    const/4 v1, 0x1

    .line 575
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static lockOnlyAfterTimerExpires()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 236
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    if-nez v1, :cond_1

    .line 237
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 243
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 245
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    return v1
.end method

.method public static setPINPUKRequest(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 359
    sput-boolean p0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    .line 360
    sget-object v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 364
    sget-object v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sput p0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    .line 366
    return-void
.end method

.method public static swipeLockBeforeTimeout()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 540
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    if-nez v1, :cond_1

    .line 541
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 547
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 549
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    return v1
.end method

.method public static useCtcPlmnConcept()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    sget-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    if-nez v0, :cond_1

    .line 263
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 266
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 269
    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    return v0
.end method

.method public static wipeInternalExternalSd()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 249
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    if-nez v1, :cond_1

    .line 250
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 256
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 258
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    return v1
.end method

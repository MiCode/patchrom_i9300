.class public Lcom/android/server/enterprise/ApnSettingsPolicy;
.super Landroid/app/enterprise/IApnSettingsPolicy$Stub;
.source "ApnSettingsPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;
    }
.end annotation


# static fields
.field public static AUTH_TYPE_CHAP:I = 0x0

.field public static AUTH_TYPE_NONE:I = 0x0

.field private static AUTH_TYPE_NOTSET:I = 0x0

.field public static AUTH_TYPE_PAP:I = 0x0

.field public static AUTH_TYPE_PAP_OR_CHAP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApnSettingsPolicyService"


# instance fields
.field private dunRequired:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    .line 33
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->AUTH_TYPE_NONE:I

    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->AUTH_TYPE_PAP:I

    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->AUTH_TYPE_CHAP:I

    .line 39
    const/4 v0, 0x3

    sput v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->AUTH_TYPE_PAP_OR_CHAP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/enterprise/IApnSettingsPolicy$Stub;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->dunRequired:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 63
    iput-object p1, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private enforceApnPermission()I
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getApnListConditionStr()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 399
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 400
    .local v4, telMan:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 402
    :cond_0
    const-string v5, "ApnSettingsPolicyService"

    const-string v6, "No SIM "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v0, 0x0

    .line 422
    :cond_1
    :goto_0
    return-object v0

    .line 406
    :cond_2
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, numeric:Ljava/lang/String;
    const/4 v0, 0x0

    .line 411
    .local v0, APNLIST_SELECTION:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_1

    .line 413
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, mcc:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, mnc:Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mcc = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mnc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter "ColumnName"
    .parameter "cursor"

    .prologue
    .line 558
    const-string v1, ""

    .line 560
    .local v1, value:Ljava/lang/String;
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 561
    if-nez v1, :cond_0

    .line 562
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    :goto_0
    return-object v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private isValidApnId(J)Z
    .locals 11
    .parameter "apId"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x2

    .line 361
    const/4 v8, 0x0

    .line 362
    .local v8, isValid:Z
    const/4 v6, 0x0

    .line 364
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v3, 0x0

    cmp-long v0, v3, p1

    if-gez v0, :cond_4

    .line 365
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "numeric"

    aput-object v0, v2, v10

    const-string v0, "type"

    aput-object v0, v2, v5

    .line 369
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_0
    const-string v0, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 371
    .local v9, numeric:Ljava/lang/String;
    sget-object v0, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 372
    .local v1, url:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() row count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 375
    if-eqz v8, :cond_1

    .line 376
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "dun"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    :cond_0
    const/4 v8, 0x0

    .line 388
    :cond_1
    if-eqz v6, :cond_2

    .line 389
    .end local v1           #url:Landroid/net/Uri;
    .end local v9           #numeric:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 393
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :cond_2
    :goto_1
    return v8

    .line 385
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 386
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    if-eqz v6, :cond_2

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_3
    throw v0

    .line 392
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :cond_4
    const-string v0, "ApnSettingsPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidApnId() : invalid apId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "isNewAp"
    .parameter "values"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 579
    if-eqz p1, :cond_2

    .line 580
    if-nez p4, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_0
    :goto_1
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColumnValue: key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void

    .line 580
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 583
    :cond_2
    if-eqz p4, :cond_0

    .line 584
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private udpateApnType(Landroid/app/enterprise/ApnSettings;)V
    .locals 8
    .parameter "apn"

    .prologue
    const/4 v3, 0x0

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, status:Z
    const/4 v1, 0x0

    .line 77
    .local v1, isNew:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->enforceApnPermission()I

    .line 78
    invoke-virtual {p1}, Landroid/app/enterprise/ApnSettings;->getId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 79
    const/4 v1, 0x1

    .line 82
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_dun_required"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->dunRequired:Z

    .line 84
    invoke-virtual {p1}, Landroid/app/enterprise/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, apnType:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->dunRequired:Z

    if-eqz v3, :cond_a

    .line 86
    if-eqz v0, :cond_9

    .line 87
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "default,supl,mms,dun"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    .line 135
    :goto_1
    return-void

    .line 82
    .end local v0           #apnType:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 89
    .restart local v0       #apnType:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dun"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    const-string v3, "default,supl,mms,dun"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    const-string v3, "default,supl,mms"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dun"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    const-string v3, "default,supl,dun"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_5
    const-string v3, "default,supl"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dun"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 102
    const-string v3, "dun"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 104
    const-string v3, "mms"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_8
    const-string v3, "default,supl,mms,dun"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_9
    const-string v3, "default,supl,mms,dun"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :cond_a
    if-eqz v0, :cond_f

    .line 113
    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 114
    const-string v3, "default,supl,mms"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 115
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 117
    const-string v3, "default,supl,mms"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    :cond_c
    const-string v3, "default,supl"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 121
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 122
    const-string v3, "mms"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 124
    :cond_e
    const-string v3, "default,supl,mms"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :cond_f
    const-string v3, "default,supl,mms"

    invoke-virtual {p1, v3}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "value"

    .prologue
    .line 590
    if-nez p1, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addUpdateApn(ZLandroid/app/enterprise/ApnSettings;)J
    .locals 36
    .parameter "isNewAp"
    .parameter "apnSettings"

    .prologue
    .line 202
    monitor-enter p0

    const/16 v28, 0x1

    .line 203
    .local v28, success:Z
    const-wide/16 v25, -0x1

    .line 204
    .local v25, rowId:J
    const/4 v10, 0x0

    .local v10, devMCC:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, devMNC:Ljava/lang/String;
    const/4 v12, 0x0

    .line 206
    .local v12, devSimOperatorNumeric:Ljava/lang/String;
    if-nez p2, :cond_0

    move-wide/from16 v33, v25

    .line 357
    :goto_0
    monitor-exit p0

    return-wide v33

    .line 209
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->udpateApnType(Landroid/app/enterprise/ApnSettings;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getId()J

    move-result-wide v5

    .line 211
    .local v5, apId:J
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v31

    .line 212
    .local v31, user:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v27

    .line 213
    .local v27, server:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v21

    .line 214
    .local v21, password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v23

    .line 215
    .local v23, proxy:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getPort()I

    move-result v22

    .line 216
    .local v22, port:I
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v17

    .line 217
    .local v17, mmsProxy:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v18

    .line 218
    .local v18, mmsc:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, apType:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getAuthType()I

    move-result v9

    .line 220
    .local v9, authType:I
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 221
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x41

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_1

    .line 222
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "APN name maximum length (65)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-wide/16 v33, -0x1

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, apn:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x78

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2

    .line 227
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "APN excedes maximum length (120)"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-wide/16 v33, -0x1

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, mcc:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, mnc:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 237
    .local v16, mmsPort:Ljava/lang/String;
    :try_start_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 239
    const/4 v14, -0x1

    .line 241
    .local v14, iMmsPort:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_3

    const-string v33, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_3

    .line 242
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 245
    :cond_3
    if-nez p1, :cond_4

    const-wide/16 v33, 0x1

    cmp-long v33, v33, v5

    if-gtz v33, :cond_5

    :cond_4
    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_5

    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_5

    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    if-eqz v33, :cond_5

    const/16 v33, -0x1

    move/from16 v0, v33

    move/from16 v1, v22

    if-gt v0, v1, :cond_5

    const/16 v33, -0x1

    move/from16 v0, v33

    if-gt v0, v14, :cond_5

    const/16 v33, -0x2

    move/from16 v0, v33

    if-gt v0, v9, :cond_5

    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v0, v9, :cond_12

    .line 249
    :cond_5
    const/16 v28, 0x0

    .line 250
    if-nez p1, :cond_6

    const-wide/16 v33, 0x1

    cmp-long v33, v33, v5

    if-lez v33, :cond_6

    .line 251
    const-string v33, "ApnSettingsPolicyService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "addUpdateAp() : invalid ap Id "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_6
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_8

    .line 253
    :cond_7
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap name"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_a

    .line 255
    :cond_9
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap apn"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_a
    if-eqz v15, :cond_b

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_c

    .line 257
    :cond_b
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap mcc"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_c
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_e

    .line 259
    :cond_d
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap mnc"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_e
    const/16 v33, -0x1

    move/from16 v0, v33

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 261
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap port"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_f
    const/16 v33, -0x1

    move/from16 v0, v33

    if-le v0, v14, :cond_10

    .line 263
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_10
    const/16 v33, -0x2

    move/from16 v0, v33

    if-gt v0, v9, :cond_11

    const/16 v33, 0x3

    move/from16 v0, v33

    if-ge v0, v9, :cond_12

    .line 265
    :cond_11
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp() : invalid ap authType"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    .end local v14           #iMmsPort:I
    :cond_12
    :goto_1
    if-eqz v28, :cond_17

    .line 274
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const-string v34, "phone"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telephony/TelephonyManager;

    .line 276
    .local v29, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v29 .. v29}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v12

    .line 278
    if-eqz v12, :cond_13

    const/16 v33, 0x4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_13

    .line 280
    const/16 v33, 0x0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 282
    const/16 v33, 0x3

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 287
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 293
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 294
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/ApnSettingsPolicy;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .line 298
    .local v32, values:Landroid/content/ContentValues;
    const-string v33, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v34, "numeric"

    if-eqz v15, :cond_14

    if-nez v19, :cond_18

    :cond_14
    const/16 v33, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v33, "mcc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v33, "mnc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v33, "apn"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v33, "user"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v33, "server"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v33, "password"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v33, "proxy"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v34, "port"

    if-ltz v22, :cond_19

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v33, "mmsproxy"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v33, "mmsport"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v33, "mmsc"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz p1, :cond_1b

    .line 316
    const-string v33, "authtype"

    const/16 v34, -0x2

    move/from16 v0, v34

    if-ge v0, v9, :cond_1a

    const/16 v34, 0x4

    move/from16 v0, v34

    if-le v0, v9, :cond_1a

    .end local v9           #authType:I
    :goto_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    :cond_15
    :goto_5
    const-string v33, "type"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/server/enterprise/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    if-eqz v11, :cond_16

    if-eqz v10, :cond_16

    .line 324
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    .line 325
    const-string v33, "current"

    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    :cond_16
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->size()I

    move-result v33

    if-lez v33, :cond_1f

    .line 330
    if-eqz p1, :cond_1d

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    sget-object v34, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 334
    .local v30, url:Landroid/net/Uri;
    if-eqz v30, :cond_1c

    const/16 v28, 0x1

    .line 335
    :goto_6
    if-eqz v28, :cond_17

    .line 336
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Created rowUri : "

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v25

    .end local v29           #tm:Landroid/telephony/TelephonyManager;
    .end local v30           #url:Landroid/net/Uri;
    .end local v32           #values:Landroid/content/ContentValues;
    :cond_17
    :goto_7
    move-wide/from16 v33, v25

    .line 357
    goto/16 :goto_0

    .line 267
    .restart local v9       #authType:I
    :catch_0
    move-exception v13

    .line 268
    .local v13, e:Ljava/lang/Exception;
    const/16 v28, 0x0

    .line 269
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 202
    .end local v5           #apId:J
    .end local v7           #apType:Ljava/lang/String;
    .end local v8           #apn:Ljava/lang/String;
    .end local v9           #authType:I
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #mcc:Ljava/lang/String;
    .end local v16           #mmsPort:Ljava/lang/String;
    .end local v17           #mmsProxy:Ljava/lang/String;
    .end local v18           #mmsc:Ljava/lang/String;
    .end local v19           #mnc:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #password:Ljava/lang/String;
    .end local v22           #port:I
    .end local v23           #proxy:Ljava/lang/String;
    .end local v27           #server:Ljava/lang/String;
    .end local v31           #user:Ljava/lang/String;
    :catchall_0
    move-exception v33

    monitor-exit p0

    throw v33

    .line 300
    .restart local v5       #apId:J
    .restart local v7       #apType:Ljava/lang/String;
    .restart local v8       #apn:Ljava/lang/String;
    .restart local v9       #authType:I
    .restart local v15       #mcc:Ljava/lang/String;
    .restart local v16       #mmsPort:Ljava/lang/String;
    .restart local v17       #mmsProxy:Ljava/lang/String;
    .restart local v18       #mmsc:Ljava/lang/String;
    .restart local v19       #mnc:Ljava/lang/String;
    .restart local v20       #name:Ljava/lang/String;
    .restart local v21       #password:Ljava/lang/String;
    .restart local v22       #port:I
    .restart local v23       #proxy:Ljava/lang/String;
    .restart local v27       #server:Ljava/lang/String;
    .restart local v29       #tm:Landroid/telephony/TelephonyManager;
    .restart local v31       #user:Ljava/lang/String;
    .restart local v32       #values:Landroid/content/ContentValues;
    :cond_18
    :try_start_4
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_2

    .line 309
    :cond_19
    const-string v33, ""

    goto/16 :goto_3

    .line 316
    :cond_1a
    sget v9, Lcom/android/server/enterprise/ApnSettingsPolicy;->AUTH_TYPE_NOTSET:I

    goto/16 :goto_4

    .line 318
    :cond_1b
    if-nez p1, :cond_15

    const/16 v33, -0x2

    move/from16 v0, v33

    if-ge v0, v9, :cond_15

    const/16 v33, 0x4

    move/from16 v0, v33

    if-le v0, v9, :cond_15

    .line 319
    const-string v33, "authtype"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 353
    .end local v9           #authType:I
    .end local v29           #tm:Landroid/telephony/TelephonyManager;
    .end local v32           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    .line 354
    .restart local v13       #e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 334
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v29       #tm:Landroid/telephony/TelephonyManager;
    .restart local v30       #url:Landroid/net/Uri;
    .restart local v32       #values:Landroid/content/ContentValues;
    :cond_1c
    const/16 v28, 0x0

    goto :goto_6

    .line 341
    .end local v30           #url:Landroid/net/Uri;
    :cond_1d
    :try_start_6
    sget-object v33, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 342
    .restart local v30       #url:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 344
    .local v24, rowCount:I
    if-lez v24, :cond_1e

    const/16 v28, 0x1

    .line 345
    :goto_8
    if-eqz v28, :cond_17

    .line 346
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Updated rowUri : "

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static/range {v30 .. v30}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    goto/16 :goto_7

    .line 344
    :cond_1e
    const/16 v28, 0x0

    goto :goto_8

    .line 351
    .end local v24           #rowCount:I
    .end local v30           #url:Landroid/net/Uri;
    :cond_1f
    const-string v33, "ApnSettingsPolicyService"

    const-string v34, "addUpdateAp Error: Empty dataset."

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_7
.end method

.method public declared-synchronized deleteApn(J)Z
    .locals 7
    .parameter "apId"

    .prologue
    const/4 v3, 0x0

    .line 173
    monitor-enter p0

    const/4 v1, -0x1

    .line 175
    .local v1, rowCount:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->enforceApnPermission()I

    .line 177
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    .line 178
    const-string v4, "ApnSettingsPolicyService"

    const-string v5, "deleteAp : apId is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 182
    :cond_1
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 183
    .local v2, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 184
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAp : deleted rowCount from ApTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 173
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getApnList()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ApnSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->enforceApnPermission()I

    .line 427
    const/4 v11, 0x0

    .line 428
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 429
    .local v7, apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    const/16 v1, 0xf

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "mcc"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "mnc"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "apn"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v3, v1

    const/16 v1, 0x8

    const-string v2, "proxy"

    aput-object v2, v3, v1

    const/16 v1, 0x9

    const-string v2, "port"

    aput-object v2, v3, v1

    const/16 v1, 0xa

    const-string v2, "mmsproxy"

    aput-object v2, v3, v1

    const/16 v1, 0xb

    const-string v2, "mmsport"

    aput-object v2, v3, v1

    const/16 v1, 0xc

    const-string v2, "mmsc"

    aput-object v2, v3, v1

    const/16 v1, 0xd

    const-string v2, "authtype"

    aput-object v2, v3, v1

    const/16 v1, 0xe

    const-string v2, "type"

    aput-object v2, v3, v1

    .line 435
    .local v3, columns:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getApnListConditionStr()Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, APNLIST_SELECTION:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 442
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v7           #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .local v8, apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :cond_0
    :try_start_1
    new-instance v9, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v9}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 446
    .local v9, apnSettings:Landroid/app/enterprise/ApnSettings;
    const-string v1, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 447
    .local v13, id:J
    invoke-virtual {v9, v13, v14}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 448
    const-string v1, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 449
    const-string v1, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 450
    const-string v1, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 451
    const-string v1, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 452
    const-string v1, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 453
    const-string v1, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 454
    const-string v1, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 455
    const-string v1, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 456
    const-string v1, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 457
    .local v17, strPort:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 458
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 459
    .local v15, port:I
    invoke-virtual {v9, v15}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 461
    .end local v15           #port:I
    :cond_1
    const-string v1, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 462
    const-string v1, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 463
    const-string v1, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 464
    const-string v1, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 465
    .local v16, strAuthType:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 466
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 467
    .local v10, authType:I
    invoke-virtual {v9, v10}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 469
    .end local v10           #authType:I
    :cond_2
    const-string v1, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V

    .line 471
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move-object v7, v8

    .line 478
    .end local v8           #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .end local v9           #apnSettings:Landroid/app/enterprise/ApnSettings;
    .end local v13           #id:J
    .end local v16           #strAuthType:Ljava/lang/String;
    .end local v17           #strPort:Ljava/lang/String;
    .restart local v7       #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :cond_3
    if-eqz v11, :cond_4

    .line 479
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_4
    return-object v7

    .line 475
    :catch_0
    move-exception v12

    .line 476
    .local v12, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    if-eqz v11, :cond_4

    goto :goto_0

    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v11, :cond_5

    .line 479
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_5
    throw v1

    .end local v7           #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8       #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8           #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v7       #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_2

    .line 475
    .end local v7           #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v8       #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    :catch_1
    move-exception v12

    move-object v7, v8

    .end local v8           #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    .restart local v7       #apnList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/ApnSettings;>;"
    goto :goto_1
.end method

.method public getApnSettings(J)Landroid/app/enterprise/ApnSettings;
    .locals 18
    .parameter "apId"

    .prologue
    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->enforceApnPermission()I

    .line 486
    const/4 v15, -0x1

    .line 487
    .local v15, rowCount:I
    const/4 v10, 0x0

    .line 492
    .local v10, cursor:Landroid/database/Cursor;
    const-wide/16 v4, 0x1

    cmp-long v2, v4, p1

    if-lez v2, :cond_0

    .line 493
    const-string v2, "ApnSettingsPolicyService"

    const-string v4, "getApnSettings : apId is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v8, 0x0

    .line 531
    :goto_0
    return-object v8

    .line 497
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 498
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 499
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 500
    new-instance v8, Landroid/app/enterprise/ApnSettings;

    invoke-direct {v8}, Landroid/app/enterprise/ApnSettings;-><init>()V

    .line 501
    .local v8, apnSettings:Landroid/app/enterprise/ApnSettings;
    const-string v2, "_id"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 502
    .local v12, id:J
    invoke-virtual {v8, v12, v13}, Landroid/app/enterprise/ApnSettings;->setId(J)V

    .line 503
    const-string v2, "name"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setName(Ljava/lang/String;)V

    .line 504
    const-string v2, "mcc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMcc(Ljava/lang/String;)V

    .line 505
    const-string v2, "mnc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMnc(Ljava/lang/String;)V

    .line 506
    const-string v2, "apn"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setApn(Ljava/lang/String;)V

    .line 507
    const-string v2, "user"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setUser(Ljava/lang/String;)V

    .line 508
    const-string v2, "server"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setServer(Ljava/lang/String;)V

    .line 509
    const-string v2, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setPassword(Ljava/lang/String;)V

    .line 510
    const-string v2, "proxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setProxy(Ljava/lang/String;)V

    .line 511
    const-string v2, "port"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 512
    .local v17, strPort:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 513
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 514
    .local v14, port:I
    invoke-virtual {v8, v14}, Landroid/app/enterprise/ApnSettings;->setPort(I)V

    .line 516
    .end local v14           #port:I
    :cond_1
    const-string v2, "mmsproxy"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    .line 517
    const-string v2, "mmsport"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    .line 518
    const-string v2, "mmsc"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setMmsc(Ljava/lang/String;)V

    .line 519
    const-string v2, "authtype"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 520
    .local v16, strAuthType:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 521
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 522
    .local v9, authType:I
    invoke-virtual {v8, v9}, Landroid/app/enterprise/ApnSettings;->setAuthType(I)V

    .line 524
    .end local v9           #authType:I
    :cond_2
    const-string v2, "type"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/enterprise/ApnSettings;->setType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 528
    .end local v3           #uri:Landroid/net/Uri;
    .end local v8           #apnSettings:Landroid/app/enterprise/ApnSettings;
    .end local v12           #id:J
    .end local v16           #strAuthType:Ljava/lang/String;
    .end local v17           #strPort:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 529
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 531
    .end local v11           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public getPreferredApn()Landroid/app/enterprise/ApnSettings;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 536
    invoke-direct {p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->enforceApnPermission()I

    .line 537
    const/4 v6, 0x0

    .line 539
    .local v6, apn:Landroid/app/enterprise/ApnSettings;
    const-string v0, "ApnSettingsPolicyService"

    const-string v1, "getPreferredApn():"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 545
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 547
    .local v7, apnId:J
    const-string v0, "ApnSettingsPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    .line 549
    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/ApnSettingsPolicy;->getApnSettings(J)Landroid/app/enterprise/ApnSettings;

    move-result-object v6

    .line 554
    .end local v7           #apnId:J
    :cond_0
    return-object v6
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 627
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 633
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 644
    return-void
.end method

.method public declared-synchronized setPreferredApn(J)Z
    .locals 8
    .parameter "apId"

    .prologue
    const-wide/16 v5, 0x0

    .line 142
    monitor-enter p0

    const/4 v2, 0x0

    .line 144
    .local v2, success:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApnSettingsPolicy;->enforceApnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    cmp-long v4, v5, p1

    if-eqz v4, :cond_1

    cmp-long v4, v5, p1

    if-lez v4, :cond_1

    .line 148
    :try_start_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferedAp() : invalid ap Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .end local p1
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 150
    .restart local p1
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v2

    .line 151
    if-eqz v2, :cond_0

    .line 152
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "apn_id"

    cmp-long v5, v5, p1

    if-nez v5, :cond_2

    const-wide/16 p1, -0x1

    .end local p1
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    iget-object v4, p0, Lcom/android/server/enterprise/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/enterprise/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 156
    .local v1, rowCount:I
    if-lez v1, :cond_3

    const/4 v2, 0x1

    .line 157
    :goto_1
    const-string v4, "ApnSettingsPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreferedAp() row count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 160
    .end local v1           #rowCount:I
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 156
    .restart local v1       #rowCount:I
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

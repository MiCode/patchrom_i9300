.class public Lcom/android/server/enterprise/EmailAccountPolicy;
.super Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field public static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 96
    iput-object p1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private enforceEmailAccountPermission()I
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private fillInEmailAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 849
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 851
    .local v0, acc:Landroid/app/enterprise/Account;
    iget v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    iput v1, v0, Landroid/app/enterprise/Account;->mId:I

    .line 852
    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 853
    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 854
    const-string v1, "0"

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 855
    const/4 v1, 0x0

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 856
    iget v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 857
    iput-wide v3, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 858
    iput-wide v3, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 859
    iget v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    iput v1, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 860
    iget-boolean v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    iput-boolean v1, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 861
    iput-object v2, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 862
    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 863
    iput-object v2, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 864
    iput-object v2, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 865
    iput-object v2, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 866
    iget-object v1, p1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 868
    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 869
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v5, v1, Landroid/app/enterprise/HostAuth;->mId:I

    .line 870
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 871
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 872
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 873
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 874
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 875
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 876
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 877
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v3, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 879
    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 880
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v5, v1, Landroid/app/enterprise/HostAuth;->mId:I

    .line 881
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 882
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 883
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 884
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 885
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 886
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 887
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 888
    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v3, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 890
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J
    .locals 8
    .parameter "accountMData"
    .parameter "accountId"
    .parameter "doReCreate"
    .parameter "updateField"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    const-string v6, "EmailAccountPolicy"

    const-string v7, ">>>>>>>>>>>>>>>>>\t\tupdateAccount for normal Email"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-ne p4, v4, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v6}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 197
    const-string v4, "EmailAccountPolicy"

    const-string v5, "updateAccount : Error :: Failed during update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-wide/16 v0, -0x1

    .line 206
    :goto_0
    return-wide v0

    .line 201
    :cond_0
    iput-boolean v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 203
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 204
    .local v2, token:J
    if-eqz p4, :cond_1

    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v5}, Lcom/android/server/enterprise/SettingsUtils;->addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v0

    .line 205
    .local v0, id:J
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #id:J
    :cond_1
    move v4, v5

    .line 204
    goto :goto_1
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .locals 20
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"

    .prologue
    .line 103
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "Send from SamsungMobile"

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/EmailAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .locals 12
    .parameter "emailAddress"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"
    .parameter "sendSSL"
    .parameter "sendTLS"
    .parameter "sendAllCert"
    .parameter "recvSSL"
    .parameter "recvTLS"
    .parameter "recvAllCert"
    .parameter "signature"
    .parameter "isNotify"

    .prologue
    .line 116
    const-string v1, "EmailAccountPolicy"

    const-string v2, ">>>>>>>>>>>>>>>>>\t\taddAccount for normal Email : Broadcasting "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 119
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 121
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 122
    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 123
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 124
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 125
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 126
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    .line 127
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 129
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p8, :cond_0

    if-eqz p2, :cond_0

    if-eqz p7, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p4

    if-gt v1, v0, :cond_0

    const/4 v1, 0x1

    move/from16 v0, p9

    if-gt v1, v0, :cond_0

    if-eqz p10, :cond_0

    if-nez p5, :cond_1

    .line 134
    :cond_0
    const-string v1, "EmailAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-wide/16 v1, -0x1

    .line 191
    :goto_0
    return-wide v1

    .line 138
    :cond_1
    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 140
    const-string v1, "EmailAccountPolicy"

    const-string v2, "addNewAccount : Error :: Account already exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 144
    :cond_2
    const-string v9, "none"

    .line 145
    .local v9, sendSecurityStr:Ljava/lang/String;
    const-string v8, "none"

    .line 147
    .local v8, recvSecurityStr:Ljava/lang/String;
    if-eqz p12, :cond_3

    if-nez p13, :cond_3

    if-nez p14, :cond_3

    .line 148
    const-string v9, "ssl"

    .line 150
    :cond_3
    if-nez p12, :cond_4

    if-eqz p13, :cond_4

    if-nez p14, :cond_4

    .line 151
    const-string v9, "tls"

    .line 153
    :cond_4
    if-eqz p12, :cond_5

    if-nez p13, :cond_5

    if-eqz p14, :cond_5

    .line 154
    const-string v9, "ssl+trustallcerts"

    .line 156
    :cond_5
    if-nez p12, :cond_6

    if-eqz p13, :cond_6

    if-eqz p14, :cond_6

    .line 157
    const-string v9, "tls+trustallcerts"

    .line 160
    :cond_6
    if-eqz p15, :cond_7

    if-nez p16, :cond_7

    if-nez p17, :cond_7

    .line 161
    const-string v8, "ssl"

    .line 163
    :cond_7
    if-nez p15, :cond_8

    if-eqz p16, :cond_8

    if-nez p17, :cond_8

    .line 164
    const-string v8, "tls"

    .line 166
    :cond_8
    if-eqz p15, :cond_9

    if-nez p16, :cond_9

    if-eqz p17, :cond_9

    .line 167
    const-string v8, "ssl+trustallcerts"

    .line 169
    :cond_9
    if-nez p15, :cond_a

    if-eqz p16, :cond_a

    if-eqz p17, :cond_a

    .line 170
    const-string v8, "tls+trustallcerts"

    .line 172
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 173
    .local v10, token:J
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_ACCOUNT_FROM_MDM"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "user_id"

    invoke-virtual {v7, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "user_passwd"

    move-object/from16 v0, p6

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "service"

    invoke-virtual {v7, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "receive_host"

    invoke-virtual {v7, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "receive_security"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "receive_port"

    move/from16 v0, p4

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "send_host"

    move-object/from16 v0, p8

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "send_security"

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "send_port"

    move/from16 v0, p9

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v1, "sender_name"

    move-object/from16 v0, p5

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v1, "signature"

    move-object/from16 v0, p18

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "notify"

    move/from16 v0, p19

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 189
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    const-string v1, "EmailAccountPolicy"

    const-string v2, "<<<<<<<<<<<<<<<<<\t\taddAccount for normal Email : Broadcasting "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-wide/16 v1, 0x0

    goto/16 :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 5
    .parameter "accId"

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 825
    const/4 v2, 0x0

    .line 826
    .local v2, ret:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteAccount() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v3}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 828
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-nez v3, :cond_0

    .line 829
    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v3}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v2

    .line 830
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 831
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.email.ACCOUNT_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "accountid"

    invoke-virtual {v1, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 833
    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 836
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return v2
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 810
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountDetails() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 811
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 812
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-nez v1, :cond_0

    .line 813
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v1

    .line 814
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "emailId"
    .parameter "serverAddress"
    .parameter "protocol"

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 799
    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEmailAccounts()[Landroid/app/enterprise/Account;
    .locals 14

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 900
    const-string v11, "getAllEmailAccounts()"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 901
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 902
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 904
    .local v9, token:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIds(Landroid/content/Context;)[J

    move-result-object v6

    .line 905
    .local v6, ids:[J
    if-eqz v6, :cond_1

    .line 906
    move-object v1, v6

    .local v1, arr$:[J
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_1

    aget-wide v4, v1, v3

    .line 907
    .local v4, id:J
    iget-object v11, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 908
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v11, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-nez v11, :cond_0

    .line 909
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 911
    .end local v0           #acc:Lcom/android/server/enterprise/AccountMetaData;
    .end local v1           #arr$:[J
    .end local v3           #i$:I
    .end local v4           #id:J
    .end local v6           #ids:[J
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .line 912
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "EmailAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAllEmailAccounts() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 915
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_1
    return-object v11

    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 921
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 927
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 938
    return-void
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 1

    .prologue
    .line 843
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 844
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;)V

    .line 845
    return-void
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 8
    .parameter "accountName"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 219
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 223
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v4

    .line 227
    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 229
    const-wide/16 v6, -0x1

    const-string v5, "account_name"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 9
    .parameter "enable"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 336
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 337
    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 341
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v4

    .line 345
    :cond_1
    if-eqz p1, :cond_2

    .line 346
    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 347
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 352
    :goto_1
    const-wide/16 v7, -0x1

    const-string v5, "vibrate"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_0

    move v4, v6

    goto :goto_0

    .line 349
    :cond_2
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_1
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 787
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsDefaultAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setEmailAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    const-wide/16 v2, -0x1

    .line 240
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 241
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 243
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    :cond_0
    const-string v0, "EmailAccountPolicy"

    const-string v4, "setEmailAddress : Error :: Invalid input parameter."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    :goto_0
    return-wide v2

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 250
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_1

    .line 254
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 256
    const/4 v4, 0x1

    const-string v5, "user_id"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .locals 8
    .parameter "protocol"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 391
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 393
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 395
    if-nez p1, :cond_1

    .line 396
    const-string v0, "EmailAccountPolicy"

    const-string v2, "setInComingProtocol : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    :goto_0
    return v4

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 402
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 406
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 408
    const-wide/16 v6, -0x1

    const-string v5, "service"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .locals 8
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 496
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 497
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 499
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v4

    .line 503
    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 505
    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    const-wide/16 v2, -0x1

    .line 419
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 421
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 423
    if-nez p1, :cond_1

    .line 424
    const-string v0, "EmailAccountPolicy"

    const-string v4, "setInComingServerAddress : Error :: Invalid input parameter."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    :goto_0
    return-wide v2

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 430
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 434
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 436
    const/4 v4, 0x1

    const-string v5, "receive_host"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setInComingServerLogin(Ljava/lang/String;J)J
    .locals 5
    .parameter "loginId"
    .parameter "accId"

    .prologue
    const-wide/16 v3, -0x1

    .line 516
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 517
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 519
    if-nez p1, :cond_1

    .line 520
    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerLogin : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    :goto_0
    return-wide v3

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 526
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    .line 530
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .locals 8
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 543
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 545
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 547
    if-nez p1, :cond_1

    .line 548
    const-string v0, "EmailAccountPolicy"

    const-string v2, "setInComingServerPassword : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    :goto_0
    return v4

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 554
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 558
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 560
    const-wide/16 v6, -0x1

    const-string v5, "user_passwd"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    .line 571
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 572
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 574
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 576
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    .line 583
    :goto_0
    return v2

    .line 580
    :cond_0
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInComingServerPort(IJ)Z
    .locals 8
    .parameter "port"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 447
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 449
    if-gez p1, :cond_1

    .line 450
    const-string v0, "EmailAccountPolicy"

    const-string v2, "setInComingServerPort : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    :goto_0
    return v4

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 456
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 460
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 462
    const-wide/16 v6, -0x1

    const-string v5, "receive_port"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setInComingServerSSL(ZJ)Z
    .locals 8
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 474
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 476
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 478
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 484
    :cond_0
    :goto_0
    return v4

    .line 482
    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 484
    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingProtocol(Ljava/lang/String;J)Z
    .locals 4
    .parameter "protocol"
    .parameter "accId"

    .prologue
    const/4 v3, 0x0

    .line 590
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 592
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 594
    if-nez p1, :cond_1

    .line 595
    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingProtocol : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    :goto_0
    return v3

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 601
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    .line 605
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .locals 8
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 682
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 683
    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 687
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return v4

    .line 691
    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 693
    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    const-wide/16 v2, -0x1

    .line 612
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 613
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 615
    if-nez p1, :cond_1

    .line 616
    const-string v0, "EmailAccountPolicy"

    const-string v4, "setOutGoingServerAddress : Error :: Invalid input parameter."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_0
    :goto_0
    return-wide v2

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 622
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 626
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 628
    const/4 v4, 0x1

    const-string v5, "send_host"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public setOutGoingServerLogin(Ljava/lang/String;J)J
    .locals 5
    .parameter "loginId"
    .parameter "accId"

    .prologue
    const-wide/16 v3, -0x1

    .line 705
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 707
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 709
    if-nez p1, :cond_1

    .line 710
    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerLogin : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    :goto_0
    return-wide v3

    .line 714
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 716
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    .line 720
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .locals 8
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 734
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 736
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 738
    if-nez p1, :cond_1

    .line 739
    const-string v0, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerPassword : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    :goto_0
    return v4

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 745
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 749
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 751
    const-wide/16 v6, -0x1

    const-string v5, "user_passwd"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    .line 762
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 766
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 767
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 769
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    .line 776
    :goto_0
    return v2

    .line 773
    :cond_0
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOutGoingServerPort(IJ)Z
    .locals 8
    .parameter "port"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 632
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 634
    if-gez p1, :cond_1

    .line 635
    const-string v0, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerPort : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_0
    :goto_0
    return v4

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 641
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 645
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 647
    const-wide/16 v6, -0x1

    const-string v5, "send_port"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .locals 8
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 659
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 660
    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerSSL() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 664
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v4

    .line 668
    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 670
    const-wide/16 v6, -0x1

    const-string v5, "send_security"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 8
    .parameter "senderName"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 289
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 291
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 293
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 295
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v4

    .line 299
    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 301
    const-wide/16 v6, -0x1

    const-string v5, "sender_name"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 8
    .parameter "signature"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 314
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 318
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v4

    .line 322
    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 324
    const-wide/16 v6, -0x1

    const-string v5, "signature"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 9
    .parameter "enable"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 364
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 365
    const-string v0, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 369
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v4

    .line 373
    :cond_1
    if-eqz p1, :cond_2

    .line 374
    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 375
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 380
    :goto_1
    const-wide/16 v7, -0x1

    const-string v5, "vibrate_when_slient"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_0

    move v4, v6

    goto :goto_0

    .line 377
    :cond_2
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_1
.end method

.method public setSyncInterval(IJ)Z
    .locals 3
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-direct {p0}, Lcom/android/server/enterprise/EmailAccountPolicy;->enforceEmailAccountPermission()I

    .line 269
    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 271
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    .line 278
    :goto_0
    return v2

    .line 275
    :cond_0
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 933
    return-void
.end method

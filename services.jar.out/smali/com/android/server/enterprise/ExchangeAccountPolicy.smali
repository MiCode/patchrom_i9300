.class public Lcom/android/server/enterprise/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field public static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    .line 61
    iput-boolean v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 62
    iput-boolean v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 116
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1040
    new-instance v3, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.exchange"

    const-string v4, "com.android.exchange.ExchangeService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v2, syncMgrCn:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 106
    const-string v3, "ExchangeAccountPolicy"

    const-string v4, "Enabling EAS ExchangeService"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #syncMgrCn:Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Constructor EX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/ExchangeAccountPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/ExchangeAccountPolicy;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method private enforceExchangeAccountPermission()I
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private fillInExchangeAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 845
    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 847
    .local v0, acc:Landroid/app/enterprise/Account;
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mId:I

    iput v3, v0, Landroid/app/enterprise/Account;->mId:I

    .line 848
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 849
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 850
    const-string v3, "0"

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 851
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 852
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 853
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 854
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 855
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mFlags:I

    iput v3, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 856
    iget-boolean v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 857
    iput-object v6, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 858
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 859
    iput-object v6, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 860
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 861
    iput-object v6, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 862
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 863
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    .line 864
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    .line 865
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    .line 866
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    .line 867
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    .line 868
    iget v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    .line 872
    :try_start_0
    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-direct {v1, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .local v1, acct:Landroid/accounts/Account;
    const-string v3, "com.android.contacts"

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v1           #acct:Landroid/accounts/Account;
    :goto_0
    iput-boolean v7, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z

    .line 885
    iput-boolean v7, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    .line 887
    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 888
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v10, v3, Landroid/app/enterprise/HostAuth;->mId:I

    .line 889
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string v4, "eas"

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 890
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 891
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v7, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 892
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    iput v4, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 893
    iget-object v4, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v4, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 895
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 896
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 897
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 899
    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 900
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v10, v3, Landroid/app/enterprise/HostAuth;->mId:I

    .line 901
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string v4, "eas"

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 902
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 903
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v7, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 904
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerFlags:I

    iput v4, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 905
    iget-object v4, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v4, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 907
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v4, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 908
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 909
    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 911
    return-object v0

    .line 880
    :catch_0
    move-exception v2

    .line 881
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillInExchangeAccountData() EX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 893
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_1

    .line 905
    :cond_1
    iget-object v3, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J
    .locals 14
    .parameter "accountMData"
    .parameter "accountId"
    .parameter "doReCreate"
    .parameter "updateField"

    .prologue
    .line 285
    const-wide/16 v2, -0x1

    .line 286
    .local v2, accId:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 287
    .local v9, token:J
    const/4 v11, 0x1

    iput-boolean v11, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    .line 289
    const/4 v11, 0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_3

    .line 290
    :try_start_0
    const-string v11, "Disabling EAS ExchangeService"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 291
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 292
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/ComponentName;

    const-string v11, "com.android.exchange"

    const-string v12, "com.android.exchange.ExchangeService"

    invoke-direct {v8, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .local v8, syncMgrCn:Landroid/content/ComponentName;
    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v11, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 294
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    .line 297
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/SettingsUtils;->getCBAAlias(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, alias:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v11}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11, v12}, Lcom/android/server/enterprise/SettingsUtils;->addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v2

    .line 299
    :goto_0
    const-wide/16 v11, -0x1

    cmp-long v11, v2, v11

    if-nez v11, :cond_2

    .line 300
    const-string v11, "Enabling EAS ExchangeService"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 301
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v11, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 303
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v4           #alias:Ljava/lang/String;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #syncMgrCn:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    return-wide v2

    .line 298
    .restart local v4       #alias:Ljava/lang/String;
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v8       #syncMgrCn:Landroid/content/ComponentName;
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 307
    :cond_2
    if-eqz v4, :cond_0

    .line 309
    :try_start_1
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "updateAccount() :Sending intent to rename"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.android.email.RENAME_CERTIFICATE"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v6, intent:Landroid/content/Intent;
    const-string v11, "accountid"

    invoke-virtual {v6, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 312
    const-string v11, "alias"

    invoke-virtual {v6, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v12, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 319
    .end local v4           #alias:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #syncMgrCn:Landroid/content/ComponentName;
    :catch_0
    move-exception v5

    .line 320
    .local v5, e:Ljava/lang/Exception;
    :try_start_2
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAccount() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 322
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 317
    :cond_3
    const/4 v11, 0x0

    :try_start_3
    iget-object v12, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11, v12}, Lcom/android/server/enterprise/SettingsUtils;->addorUpdateAccount(Lcom/android/server/enterprise/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v2

    goto :goto_1
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 31
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    .line 192
    const/16 v19, 0x1e0

    const/16 v20, 0x3fc

    const/16 v21, 0x3e

    const/16 v22, -0x2

    const/16 v23, 0x0

    const/16 v24, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    invoke-virtual/range {v0 .. v30}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .locals 13
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"
    .parameter "peakStarttime"
    .parameter "peakEndtime"
    .parameter "peakDays"
    .parameter "offPeak"
    .parameter "roamingSchedule"
    .parameter "retrivalSize"
    .parameter "periodCalendar"
    .parameter "isNotify"
    .parameter "syncContacts"
    .parameter "syncCalendar"
    .parameter "certificate_data"
    .parameter "certificate_password"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 212
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static/range {p13 .. p13}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p13

    .line 215
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 216
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 217
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 218
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 219
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 220
    invoke-static/range {p17 .. p17}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p17

    .line 222
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p13, :cond_0

    if-eqz p9, :cond_0

    if-nez p3, :cond_1

    .line 224
    :cond_0
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-wide/16 v7, -0x1

    .line 281
    :goto_0
    return-wide v7

    .line 231
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, p11

    if-ne v1, v0, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p12

    if-ne v1, v0, :cond_2

    .line 232
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters. From the arguments \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-wide/16 v7, -0x1

    goto :goto_0

    .line 237
    :cond_2
    const-string v4, "eas"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, p13

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 238
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Account already exists."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-wide/16 v7, -0x1

    goto :goto_0

    .line 242
    :cond_3
    const-wide/16 v7, 0x0

    .line 243
    .local v7, accId:J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 246
    .local v11, token:J
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_ACCOUNT_FROM_MDM"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v10, intent:Landroid/content/Intent;
    const-string v1, "user_id"

    invoke-virtual {v10, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "service"

    const-string v2, "eas"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "server_name"

    move-object/from16 v0, p13

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "user_passwd"

    move-object/from16 v0, p17

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v2, "use_ssl"

    if-eqz p14, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v2, "trust_all"

    if-eqz p16, :cond_5

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v10, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v1, "domain"

    move-object/from16 v0, p4

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "peak_starttime"

    move/from16 v0, p19

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v1, "peak_endtime"

    move/from16 v0, p20

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v1, "peak_days"

    move/from16 v0, p21

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v1, "peak"

    move/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v1, "off_peak"

    move/from16 v0, p22

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v1, "roaming_schedule"

    move/from16 v0, p23

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string v1, "period_email"

    move/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v1, "retrival_size"

    move/from16 v0, p24

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v1, "period_calendar"

    move/from16 v0, p25

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v1, "notify"

    move/from16 v0, p26

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string v1, "sync_contacts"

    move/from16 v0, p27

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v1, "sync_calendar"

    move/from16 v0, p28

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "account_name"

    invoke-virtual {v10, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v1, "signature"

    move-object/from16 v0, p10

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "vibrate_when_slient"

    move/from16 v0, p12

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 269
    const-string v1, "vibrate"

    move/from16 v0, p11

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string v1, "is_default"

    move/from16 v0, p7

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const-string v1, "certificate_data"

    move-object/from16 v0, p29

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 272
    const-string v1, "certificate_password"

    move-object/from16 v0, p30

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v1, v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v10           #intent:Landroid/content/Intent;
    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 251
    .restart local v10       #intent:Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 252
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 275
    .end local v10           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 276
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewAccount() EX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 278
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 19
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "serverAddress"
    .parameter "serverPassword"

    .prologue
    .line 143
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "2.5"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v17, p5

    invoke-virtual/range {v0 .. v18}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(J)Z
    .locals 7
    .parameter "accId"

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 948
    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccount() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v4}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 950
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_0

    .line 951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 953
    .local v2, token:J
    const-string v4, "ExchangeAccountPolicy"

    const-string v5, ">>>>>>>>>>>>>>>>>        deleteAccount(long accId)"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE_ACCOUNT_FROM_MDM"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "user_id"

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    const-string v4, "service"

    const-string v5, "eas"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const-string v4, "server_name"

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v5, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 960
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #token:J
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 6
    .parameter "accId"

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccountDetails() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 835
    const/4 v1, 0x0

    .line 836
    .local v1, ret:Landroid/app/enterprise/Account;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 837
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v4}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 838
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_0

    .line 839
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->fillInExchangeAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v1

    .line 840
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 841
    return-object v1
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 822
    const-string v3, "eas"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEASAccounts()[Landroid/app/enterprise/Account;
    .locals 14

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 922
    const-string v11, "getEASAccounts()"

    invoke-static {v11}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 923
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/Account;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 926
    .local v9, token:J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountIds(Landroid/content/Context;)[J

    move-result-object v6

    .line 927
    .local v6, ids:[J
    if-eqz v6, :cond_1

    .line 928
    move-object v1, v6

    .local v1, arr$:[J
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_1

    aget-wide v4, v1, v3

    .line 929
    .local v4, id:J
    iget-object v11, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v11}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 930
    .local v0, acc:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    iget-boolean v11, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsEAS:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 931
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->fillInExchangeAccountData(Lcom/android/server/enterprise/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 933
    .end local v0           #acc:Lcom/android/server/enterprise/AccountMetaData;
    .end local v1           #arr$:[J
    .end local v3           #i$:I
    .end local v4           #id:J
    .end local v6           #ids:[J
    .end local v7           #len$:I
    :catch_0
    move-exception v2

    .line 934
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getEASAccounts() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 937
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

.method public getDeviceId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 987
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v7

    const-string v8, "com.android.email"

    invoke-virtual {v7, v8}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 989
    :cond_0
    const/4 v7, 0x0

    .line 1034
    :goto_0
    return-object v7

    .line 991
    :cond_1
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 992
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 994
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 996
    .local v5, token:J
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 997
    .local v4, sync:Ljava/lang/Object;
    monitor-enter v4

    .line 999
    :try_start_0
    new-instance v3, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;

    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;Ljava/lang/Object;)V

    .line 1012
    .local v3, receiver:Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-direct {v1, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v7, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1016
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.android.email.GET_DEVICEID"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v8, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1020
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 1021
    const-string v7, "ExchangeAccountPolicy"

    const-string v8, "Device id is still null, waiting 5 seconds..."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-wide/16 v7, 0x1388

    invoke-virtual {v4, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1028
    :cond_3
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1032
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #receiver:Landroid/content/BroadcastReceiver;
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1033
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1034
    sget-object v7, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mDeviceId:Ljava/lang/String;

    goto :goto_0

    .line 1024
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #receiver:Landroid/content/BroadcastReceiver;
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1029
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #receiver:Landroid/content/BroadcastReceiver;
    :catch_1
    move-exception v0

    .line 1030
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceId() EX : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1032
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1069
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1075
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1086
    return-void
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 969
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 970
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;)V

    .line 971
    iget-boolean v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 978
    :goto_0
    return-void

    .line 974
    :cond_0
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "Delayed Broadcast"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .locals 8
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 361
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAcceptAllCertificates() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 365
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v4

    .line 369
    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 370
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 372
    const-wide/16 v6, -0x1

    const-string v5, "trust_all"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 5
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    const-wide/16 v3, -0x1

    .line 444
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 446
    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 447
    invoke-static {p3}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const/4 p3, 0x0

    .line 450
    :cond_0
    invoke-static {p4}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 451
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 454
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-nez p1, :cond_2

    .line 455
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setAccountBaseParameters : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1
    :goto_0
    return-wide v3

    .line 459
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p5, p6, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 461
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_1

    .line 465
    iput-object p2, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 467
    if-eqz p3, :cond_3

    .line 468
    iput-object p3, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 470
    :cond_3
    if-eqz p1, :cond_4

    .line 471
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 472
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 474
    :cond_4
    if-eqz p4, :cond_1

    .line 475
    iput-object p4, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 476
    iput-object p4, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 8
    .parameter "accountName"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 699
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 700
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 704
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v4

    .line 708
    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 710
    const-wide/16 v6, -0x1

    const-string v5, "account_name"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

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

    .line 384
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 385
    const-string v0, "ExchangeAccountPolicy"

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

    .line 387
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 389
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v4

    .line 393
    :cond_1
    if-eqz p1, :cond_2

    .line 394
    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 395
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 400
    :goto_1
    const-wide/16 v7, -0x1

    const-string v5, "vibrate"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_0

    move v4, v6

    goto :goto_0

    .line 397
    :cond_2
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_1
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 686
    const-string v0, "ExchangeAccountPolicy"

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

    .line 687
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .locals 7
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    .line 577
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 578
    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClientAuthCert() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v3, 0x1

    cmp-long v3, p3, v3

    if-gez v3, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 584
    .local v1, token:J
    iput-boolean v6, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    .line 586
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.email.INSTALL_CERTIFICATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 590
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "password"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 592
    const-string v3, "accountid"

    invoke-virtual {v0, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 594
    iget-object v3, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 595
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setDataSyncs(ZZZZJ)Z
    .locals 8
    .parameter "syncCalendar"
    .parameter "syncContacts"
    .parameter "syncTasks"
    .parameter "syncNotes"
    .parameter "accId"

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 788
    iget-object v5, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p5, p6, v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 790
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    .line 791
    const/4 v5, 0x0

    .line 807
    :goto_0
    return v5

    .line 794
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 797
    .local v3, token:J
    :try_start_0
    new-instance v1, Landroid/accounts/Account;

    iget-object v5, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v6, "com.android.exchange"

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .local v1, acct:Landroid/accounts/Account;
    const-string v5, "com.android.contacts"

    invoke-static {v1, v5, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 800
    const-string v5, "com.android.calendar"

    invoke-static {v1, v5, p1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 801
    const-string v5, "tasks"

    invoke-static {v1, v5, p3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v1           #acct:Landroid/accounts/Account;
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    const/4 v5, 0x1

    goto :goto_0

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDataSyncs() EX : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .locals 8
    .parameter "password"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 490
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 492
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 494
    if-nez p1, :cond_1

    .line 495
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "setPassword : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_0
    :goto_0
    return v4

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 501
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_0

    .line 505
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 506
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 508
    const-wide/16 v6, -0x1

    const-string v5, "user_passwd"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setPastDaysToSync(IJ)Z
    .locals 9
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 607
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 608
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPastDaysToSync() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    if-gt v6, p1, :cond_0

    const/4 v0, 0x6

    if-ge v0, p1, :cond_2

    .line 611
    :cond_0
    const-string v0, "ExchangeAccountPolicy"

    const-string v2, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    :goto_0
    return v4

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 617
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v1, :cond_1

    .line 621
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 623
    const-wide/16 v7, -0x1

    const-string v5, "period_email"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_1

    move v4, v6

    goto :goto_0
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .locals 4
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    const/4 v3, 0x0

    .line 519
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 521
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 523
    if-nez p1, :cond_1

    .line 524
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setProtocolVersion : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    :goto_0
    return v3

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 530
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-eqz v0, :cond_0

    .line 534
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSSL(ZJ)Z
    .locals 8
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 336
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 337
    const-string v0, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSSL() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 341
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v4

    .line 345
    :cond_1
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:Z

    .line 346
    iput-boolean p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 348
    const-wide/16 v6, -0x1

    const-string v5, "use_ssl"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "senderName"
    .parameter "accId"

    .prologue
    const/4 v2, 0x0

    .line 663
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 664
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 666
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 668
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    .line 675
    :goto_0
    return v2

    .line 672
    :cond_0
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 9
    .parameter "signature"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 548
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 551
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.android.email.SIGNATURE_UPDATED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "signature"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v0, v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 556
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 558
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 560
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v4

    .line 564
    :cond_1
    iput-object p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 566
    const-wide/16 v7, -0x1

    const-string v5, "signature"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

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

    .line 412
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 413
    const-string v0, "ExchangeAccountPolicy"

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

    .line 415
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 417
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v4

    .line 421
    :cond_1
    if-eqz p1, :cond_2

    .line 422
    iput-boolean v6, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 423
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 428
    :goto_1
    const-wide/16 v7, -0x1

    const-string v5, "vibrate_when_slient"

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_0

    move v4, v6

    goto :goto_0

    .line 425
    :cond_2
    iput-boolean v4, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_1
.end method

.method public setSyncInterval(IJ)Z
    .locals 5
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 637
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 638
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, v1}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v0

    .line 642
    .local v0, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v0, :cond_0

    .line 652
    :goto_0
    return v4

    .line 648
    :cond_0
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 649
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    goto :goto_0
.end method

.method public setSyncPeakTimings(IIIJ)Z
    .locals 8
    .parameter "peakDays"
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "accId"

    .prologue
    const/4 v4, 0x0

    .line 725
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 727
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p4, p5, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 729
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_1

    .line 737
    :cond_0
    :goto_0
    return v4

    .line 733
    :cond_1
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakDays:I

    .line 734
    iput p2, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakStartMinute:I

    .line 735
    iput p3, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakEndMinute:I

    .line 737
    const-wide/16 v6, -0x1

    const-string v5, "peak_days"

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v6, v2

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public setSyncSchedules(IIIJ)Z
    .locals 9
    .parameter "peakSyncSchedule"
    .parameter "offPeakSyncSchedule"
    .parameter "roamingSyncSchedule"
    .parameter "accId"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 754
    invoke-direct {p0}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->enforceExchangeAccountPermission()I

    .line 758
    iget-object v0, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p4, p5, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Lcom/android/server/enterprise/AccountMetaData;

    move-result-object v1

    .line 760
    .local v1, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    if-nez v1, :cond_0

    .line 768
    :goto_0
    return v4

    .line 764
    :cond_0
    iput p1, v1, Lcom/android/server/enterprise/AccountMetaData;->mPeakSyncSchedule:I

    .line 765
    iput p2, v1, Lcom/android/server/enterprise/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 766
    if-ne p3, v6, :cond_1

    move v0, v6

    :goto_1
    iput v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mRoamingSyncSchedule:I

    .line 768
    const-wide/16 v7, -0x1

    const-string v5, "peak"

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ExchangeAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_2

    :goto_2
    move v4, v6

    goto :goto_0

    :cond_1
    move v0, v4

    .line 766
    goto :goto_1

    :cond_2
    move v6, v4

    .line 768
    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

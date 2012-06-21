.class public Lcom/android/server/enterprise/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    }
.end annotation


# static fields
.field private static final DNS_SERVERS:I = 0x0

.field private static final FORWARD_ROUTES:I = 0x2

.field private static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mService:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v8, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 95
    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 97
    iput-object v8, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    .line 101
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 103
    iput-object v8, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    iput-object v8, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 135
    iput-object p1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 136
    new-instance v6, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 137
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 138
    .local v5, vpnProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 143
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 144
    .local v4, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 148
    :cond_2
    iget-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 149
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 150
    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 152
    :cond_3
    iget-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 153
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    goto :goto_0

    .line 159
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_4
    return-void
.end method

.method private addProfile(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    .locals 2
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1319
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z
    .locals 6
    .parameter "p"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1292
    if-lez p2, :cond_1

    .line 1293
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1294
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1295
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1296
    iget-object v5, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1297
    const/4 v3, 0x1

    .line 1307
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_1
    return v3

    .line 1295
    .restart local v1       #i:I
    .restart local v2       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    move v3, v4

    .line 1302
    goto :goto_1

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 1307
    goto :goto_1
.end method

.method private declared-synchronized disconnect()V
    .locals 6

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v3, :cond_0

    .line 1447
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 1449
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v3, :cond_1

    .line 1450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1451
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-interface {v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1452
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    .end local v1           #token:J
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1446
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    return-void
.end method

.method private enforceVpnPermission()I
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .locals 4
    .parameter "Name"

    .prologue
    .line 1271
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1272
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1273
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1274
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1282
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_1
    return v1

    .line 1273
    .restart local v1       #i:I
    .restart local v2       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1279
    .end local v1           #i:I
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1280
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1282
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getProfileProperty(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .parameter "profileName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1168
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v8

    .line 1169
    .local v8, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1170
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 1171
    .local v7, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v9, v7, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p2, :pswitch_data_0

    .line 1195
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v8           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    :goto_0
    return-object v6

    .line 1175
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v6       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v8       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :pswitch_0
    iget-object v9, v7, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 1176
    .local v2, lDnsServer:Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1180
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #lDnsServer:Ljava/lang/String;
    .end local v5           #len$:I
    .local v1, i$:Ljava/util/Iterator;
    :pswitch_1
    iget-object v9, v7, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v4, v0, v1

    .line 1181
    .local v4, lSearchDomain:Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1185
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #lSearchDomain:Ljava/lang/String;
    .end local v5           #len$:I
    .local v1, i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v9, v7, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 1186
    .local v3, lRoutes:Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1195
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #lRoutes:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v8           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .locals 2

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeProfileFromStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    .locals 7
    .parameter "p"

    .prologue
    .line 1378
    const/4 v4, 0x1

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "VpnID"

    aput-object v5, v0, v4

    .line 1381
    .local v0, Column:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 1384
    .local v1, Value:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "VPN"

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1385
    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1386
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1387
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    .end local v0           #Column:[Ljava/lang/String;
    .end local v1           #Value:[Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1389
    :catch_0
    move-exception v2

    .line 1390
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    .locals 5
    .parameter "index"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1398
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1399
    iget-object v3, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1400
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 1401
    .local v0, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v0, :cond_0

    .line 1402
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z

    .line 1405
    .end local v0           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_0
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 909
    const/4 v0, 0x0

    .line 924
    :cond_0
    return-object v0

    .line 911
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v0, ProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, keys:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-lez v7, :cond_0

    .line 916
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v3, v1, v2

    .line 917
    .local v3, key:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 918
    iget-object v7, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    move-result-object v6

    .line 919
    .local v6, profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v6, :cond_2

    .line 920
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    .end local v6           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z
    .locals 12
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1347
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->encode()[B

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1348
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1349
    .local v3, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1350
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v5

    .line 1352
    .local v5, uid:I
    iget-object v9, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/VpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1353
    .local v6, username:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/VpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1354
    .local v4, pwd:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 1357
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 1360
    .local v7, values:[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1361
    .local v1, cv:Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1362
    const-string v9, "VpnID"

    iget-object v10, p1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v9, "UsrName"

    invoke-virtual {v1, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v9, "UsrPwd"

    invoke-virtual {v1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1370
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pwd:Ljava/lang/String;
    .end local v5           #uid:I
    .end local v6           #username:Ljava/lang/String;
    .end local v7           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 1367
    :catch_0
    move-exception v2

    .line 1368
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setProfileId()J
    .locals 7

    .prologue
    .line 1326
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1327
    .local v3, millis:J
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1328
    .local v2, keys:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 1329
    aget-object v5, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1330
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 1331
    const/4 v1, 0x0

    .line 1328
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1335
    .end local v1           #i:I
    .end local v2           #keys:[Ljava/lang/String;
    .end local v3           #millis:J
    :catch_0
    move-exception v0

    .line 1336
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1338
    const-wide/16 v3, -0x1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-wide v3
.end method

.method private setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 11
    .parameter "profileName"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1111
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p2, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return v8

    .line 1117
    :cond_1
    const-string v1, ""

    .line 1118
    .local v1, endListAddress:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v2, endListAddressBuilder:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1120
    .local v5, listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1123
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1126
    .end local v5           #listAddresses:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_3

    .line 1128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1130
    :cond_3
    if-nez p3, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1133
    :cond_4
    const/4 v10, 0x2

    if-ne p3, v10, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1137
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1138
    .local v4, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    .line 1139
    .local v7, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1140
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 1141
    .local v6, profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v6, :cond_0

    .line 1142
    packed-switch p3, :pswitch_data_0

    .line 1154
    :goto_2
    :try_start_0
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 1159
    goto :goto_0

    .line 1144
    :pswitch_0
    iput-object v1, v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_2

    .line 1147
    :pswitch_1
    iput-object v1, v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_2

    .line 1150
    :pswitch_2
    iput-object v1, v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    goto :goto_2

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, e:Ljava/io/IOException;
    const-string v9, "VpnPolicy"

    const-string v10, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .locals 2

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :goto_0
    monitor-exit p0

    return-void

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1436
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .parameter "addresses"
    .parameter "cidr"

    .prologue
    .line 1200
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 1201
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1200
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1205
    :cond_1
    const/16 v8, 0x20

    .line 1206
    .local v8, prefixLength:I
    if-eqz p2, :cond_2

    .line 1207
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1208
    .local v7, parts:[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 1209
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1211
    .end local v7           #parts:[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1212
    .local v2, bytes:[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 1214
    .local v5, integer:I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 1216
    :cond_3
    const/4 v9, 0x0

    .line 1222
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bytes:[B
    .end local v4           #i$:I
    .end local v5           #integer:I
    .end local v6           #len$:I
    .end local v8           #prefixLength:I
    :goto_1
    return v9

    .line 1219
    :catch_0
    move-exception v3

    .line 1220
    .local v3, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 1222
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 14
    .parameter "adminProfile"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 932
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v10, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 939
    :cond_0
    iget-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v10, :cond_1

    .line 940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 941
    .local v6, token:J
    iget-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 942
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    iget-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v10, v12, :cond_1

    .line 944
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->disconnect()V

    .line 948
    .end local v6           #token:J
    :cond_1
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v12, 0x40

    if-gt v10, v12, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/VpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-nez v10, :cond_3

    .line 1077
    :cond_2
    :goto_0
    monitor-exit p0

    return v9

    .line 957
    :cond_3
    :try_start_2
    new-instance v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->setProfileId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;-><init>(Ljava/lang/String;)V

    .line 958
    .local v8, vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v8, :cond_2

    .line 959
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 960
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 961
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    move v10, v11

    :goto_1
    iput-boolean v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 963
    const-string v0, ""

    .line 964
    .local v0, addresses:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 965
    .local v1, addressesBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 966
    .local v5, listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 969
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1070
    .end local v0           #addresses:Ljava/lang/String;
    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #listAddresses:Ljava/lang/String;
    .end local v8           #vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :catch_0
    move-exception v2

    .line 1071
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 932
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v8       #vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_4
    move v10, v9

    .line 961
    goto :goto_1

    .line 972
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_6

    .line 974
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 976
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    const/4 v10, 0x0

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 979
    :cond_7
    iput-object v0, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    .line 981
    const-string v0, ""

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 984
    .restart local v5       #listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 987
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1073
    .end local v0           #addresses:Ljava/lang/String;
    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #listAddresses:Ljava/lang/String;
    .end local v8           #vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :catch_1
    move-exception v2

    .line 1074
    .local v2, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 990
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v8       #vpnProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_8
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_9

    .line 992
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 994
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a

    const/4 v10, 0x1

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 997
    :cond_a
    iput-object v0, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    .line 999
    const-string v0, ""

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #addressesBuilder:Ljava/lang/StringBuilder;
    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1001
    .restart local v1       #addressesBuilder:Ljava/lang/StringBuilder;
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1002
    .restart local v5       #listAddresses:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1005
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1008
    .end local v5           #listAddresses:Ljava/lang/String;
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1009
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_c

    .line 1010
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1012
    :cond_c
    iput-object v0, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1014
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 1015
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 1017
    :cond_d
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 1018
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 1021
    :cond_e
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "PPTP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1022
    const/4 v10, 0x0

    iput v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    .line 1023
    iget-boolean v10, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->mppe:Z

    .line 1065
    :goto_5
    iget-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1066
    .local v4, index:I
    if-gez v4, :cond_2

    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1067
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)Z

    move-result v9

    goto/16 :goto_0

    .line 1024
    .end local v4           #index:I
    :cond_f
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1025
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1028
    const/4 v10, 0x1

    iput v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    .line 1029
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1030
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_5

    .line 1032
    :cond_10
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1033
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1036
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1037
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1038
    const/4 v10, 0x2

    iput v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_5

    .line 1042
    :cond_11
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_HYBRID_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1043
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1044
    const/4 v10, 0x5

    iput v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_5

    .line 1045
    :cond_12
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1046
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1049
    const/4 v10, 0x3

    iput v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    .line 1050
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1051
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_5

    .line 1053
    :cond_13
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1054
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1057
    const/4 v10, 0x4

    iput v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    .line 1058
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1059
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_5
.end method

.method public declared-synchronized deleteProfile(Ljava/lang/String;)Z
    .locals 8
    .parameter "name"

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 669
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 670
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 671
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 672
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v6, v6, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 673
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 674
    .local v2, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 677
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_2

    .line 678
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 679
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 680
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 682
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->disconnect()V

    .line 684
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 685
    const/4 v6, 0x1

    .line 694
    .end local v1           #i:I
    .end local v2           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v4           #token:J
    :goto_1
    monitor-exit p0

    return v6

    .line 671
    .restart local v1       #i:I
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 691
    .end local v1           #i:I
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 692
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 665
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .locals 0

    .prologue
    .line 1564
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->disconnect()V

    .line 1565
    return-void
.end method

.method public declared-synchronized getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "profileName"

    .prologue
    const/4 v4, 0x0

    .line 621
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, certificate:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 634
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 626
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 627
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 628
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 629
    .local v2, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v5, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    iget-object v4, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    .end local v0           #certificate:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1099
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1091
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "profileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1107
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    const/4 v3, 0x0

    .line 422
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 434
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 426
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 427
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 428
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 429
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 422
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 1249
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1251
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1252
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1253
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 1254
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1255
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1260
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 757
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 770
    :goto_0
    return-object v2

    .line 761
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 762
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 763
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 764
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 766
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_0

    .line 763
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    move-object v2, v3

    .line 770
    goto :goto_0
.end method

.method public declared-synchronized getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerId"

    .prologue
    const/4 v3, 0x0

    .line 384
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    if-nez p1, :cond_1

    .line 396
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 388
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 389
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 390
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 391
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 384
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "providerName"

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 579
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 580
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 581
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 582
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    const/4 v3, 0x0

    .line 403
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 407
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 408
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 409
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 410
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "providerName"

    .prologue
    const/4 v4, 0x0

    .line 441
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    if-nez p1, :cond_0

    .line 481
    :goto_0
    monitor-exit p0

    return-object v4

    .line 446
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-nez v5, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->startVpnService()V

    .line 449
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    if-eqz v5, :cond_4

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 451
    .local v2, token:J
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v5, :cond_2

    .line 455
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/VpnInfoPolicy;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 458
    iget-object v5, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v5, v5, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v5, :pswitch_data_0

    .line 472
    const-string v4, "IDLE"

    goto :goto_0

    .line 460
    :pswitch_0
    const-string v4, "DISCONNECTED"

    goto :goto_0

    .line 462
    :pswitch_1
    const-string v4, "INITIALIZING"

    goto :goto_0

    .line 464
    :pswitch_2
    const-string v4, "CONNECTING"

    goto :goto_0

    .line 466
    :pswitch_3
    const-string v4, "CONNECTED"

    goto :goto_0

    .line 468
    :pswitch_4
    const-string v4, "TIMEOUT"

    goto :goto_0

    .line 470
    :pswitch_5
    const-string v4, "FAILED"

    goto :goto_0

    .line 475
    :cond_3
    const-string v4, "IDLE"

    goto :goto_0

    .line 478
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #token:J
    :cond_4
    const-string v4, "IDLE"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 441
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 356
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 357
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 358
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 359
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    iget v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    const-string v3, "PPTP"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :goto_1
    monitor-exit p0

    return-object v3

    .line 364
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :pswitch_1
    :try_start_1
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_1

    .line 366
    :pswitch_2
    const-string v3, "L2TP_IPSEC"

    goto :goto_1

    .line 368
    :pswitch_3
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_1

    .line 370
    :pswitch_4
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_1

    .line 372
    :pswitch_5
    const-string v3, "IPSEC_HYBRID_RSA"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 377
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 355
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 701
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 713
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 705
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 706
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 707
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 708
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 709
    iget-object v3, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 701
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 490
    .local v3, uid:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 492
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 493
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 494
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 495
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 489
    .end local v3           #uid:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 509
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "providerName"

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    .line 528
    .local v3, uid:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 530
    .local v2, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 531
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 532
    .local v1, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 533
    iget-object v4, v1, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v2           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 527
    .end local v3           #uid:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 519
    iget-object v0, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList()[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 878
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v4

    .line 879
    .local v4, uid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 881
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-nez v3, :cond_1

    .line 897
    :cond_0
    return-object v0

    .line 885
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 889
    const/4 v2, 0x0

    .line 891
    .local v2, position:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 893
    .local v0, VpnList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 894
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v5, v5, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    aput-object v5, v0, v2

    .line 895
    add-int/lit8 v2, v2, 0x1

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 853
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 854
    iget-object v4, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 856
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v3

    .line 859
    :cond_1
    if-eqz p1, :cond_0

    .line 862
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    .local v0, AdminVpnId:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 867
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 868
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 777
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 778
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v3

    .line 781
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 782
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 783
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 784
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 786
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 783
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    const/4 v3, 0x0

    .line 827
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 829
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 845
    :goto_0
    return v2

    .line 832
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 833
    .local v1, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 834
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 835
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 837
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v2, :cond_1

    .line 838
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    iget-boolean v2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->mppe:Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 840
    goto :goto_0

    .line 834
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_3
    move v2, v3

    .line 845
    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1570
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1576
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1587
    return-void
.end method

.method public declared-synchronized setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 596
    monitor-enter p0

    const/4 v4, 0x0

    .line 597
    .local v4, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 598
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 602
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 603
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 604
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 605
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    const/4 v4, 0x1

    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 614
    :goto_0
    monitor-exit p0

    return v5

    .line 609
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 596
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1095
    .local p2, searchDomains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1087
    .local p2, dnsServers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "profileName"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    .line 799
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 820
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 804
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 805
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 806
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 807
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 808
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v6, :cond_0

    .line 809
    move-object v2, v3

    .line 810
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iput-boolean p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->mppe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 812
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 813
    const/4 v5, 0x1

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 799
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "profileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1103
    .local p2, forwardRoutes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "profileName"
    .parameter "Id"

    .prologue
    const/4 v8, 0x0

    .line 169
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 200
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 172
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 173
    .local v6, uid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .local v1, cv:Landroid/content/ContentValues;
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 177
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 178
    .local v5, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 179
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 180
    .local v4, profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 181
    iput-object p2, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    .line 182
    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 183
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V

    .line 184
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 187
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 190
    .local v7, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    goto :goto_0

    .line 196
    .end local v0           #columns:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v7           #values:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 197
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 169
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "profileName"
    .parameter "ipSecIdentifier"

    .prologue
    const/4 v5, 0x0

    .line 1226
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 1227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p2, :cond_1

    .line 1228
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1229
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1230
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 1231
    .local v3, p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iget-object v6, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1232
    iput-object p2, v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1233
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v2

    .line 1235
    .local v2, index:I
    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1240
    const/4 v5, 0x1

    .line 1245
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    .end local v3           #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    :goto_0
    return v5

    .line 1236
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #index:I
    .restart local v3       #p:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1237
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "VpnPolicy"

    const-string v7, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "enabled"
    .parameter "secret"

    .prologue
    const/4 v5, 0x0

    .line 722
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 723
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 724
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 725
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 726
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 727
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 728
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 729
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 730
    move-object v2, v3

    .line 731
    if-eqz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 732
    iput-object p3, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    :goto_0
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 740
    const/4 v5, 0x1

    .line 749
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return v5

    .line 733
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    if-nez p2, :cond_0

    .line 734
    :try_start_2
    const-string v6, ""

    iput-object v6, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 722
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 741
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v4       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "name"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x41

    if-ge v5, v6, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 211
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 212
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 213
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 214
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 215
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 216
    move-object v2, v3

    .line 217
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    .line 218
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    const/4 v5, 0x1

    .line 228
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "profileName"
    .parameter "psk"

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 548
    const/4 v5, 0x0

    .line 549
    .local v5, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 550
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 553
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 554
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 555
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 556
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 557
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 558
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 559
    move-object v2, v3

    .line 560
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 561
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 563
    :cond_0
    const/4 v5, 0x1

    .line 570
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 547
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #ret:Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "name"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 240
    .local v4, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 241
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 242
    .local v3, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v2, 0x0

    .line 243
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v3, :cond_0

    .line 244
    move-object v2, v3

    .line 245
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    .line 246
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    const/4 v5, 0x1

    .line 254
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v4           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 642
    monitor-enter p0

    const/4 v4, 0x0

    .line 643
    .local v4, ret:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    .line 644
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 647
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 648
    .local v1, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 649
    .local v3, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 650
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 651
    .local v2, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    iput-object p2, v2, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :try_start_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    const/4 v4, 0x1

    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 660
    :goto_0
    monitor-exit p0

    return v5

    .line 655
    .restart local v1       #index:I
    .restart local v2       #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v3       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 642
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #index:I
    .end local v2           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v3           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "profileName"
    .parameter "userName"

    .prologue
    const/4 v8, 0x0

    .line 262
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    .line 263
    .local v6, uid:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v1, cv:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_0

    .line 266
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 267
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 268
    .local v5, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 269
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 270
    .local v4, profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v4, :cond_2

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 272
    iput-object p2, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 273
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 278
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V

    .line 279
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v9, "UsrName"

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 285
    .local v0, columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 290
    .local v7, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 315
    .end local v0           #columns:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v7           #values:[Ljava/lang/String;
    :cond_0
    :goto_1
    monitor-exit p0

    return v8

    .line 275
    .restart local v3       #index:I
    .restart local v4       #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v5       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :cond_1
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 276
    const-string v9, ""

    iput-object v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 311
    .end local v3           #index:I
    .end local v4           #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    :catch_0
    move-exception v2

    .line 312
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 262
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #uid:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 293
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v3       #index:I
    .restart local v4       #profile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .restart local v5       #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .restart local v6       #uid:I
    :cond_2
    const/4 v9, 0x0

    :try_start_4
    iput-boolean v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    .line 294
    const-string v9, ""

    iput-object v9, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    .line 295
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V

    .line 296
    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v9, "UsrName"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 302
    .restart local v0       #columns:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 307
    .restart local v7       #values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v8

    goto :goto_1
.end method

.method public declared-synchronized setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "profileName"
    .parameter "pwd"

    .prologue
    const/4 v9, 0x0

    .line 323
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 325
    .local v7, uid:I
    if-eqz p2, :cond_0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 327
    .local v3, index:I
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 328
    .local v6, profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 329
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;

    .line 330
    .local v5, oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    const/4 v4, 0x0

    .line 331
    .local v4, newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    if-eqz v5, :cond_0

    .line 332
    move-object v4, v5

    .line 333
    iput-object p2, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    .line 334
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;)V

    .line 335
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v1, cv:Landroid/content/ContentValues;
    const-string v10, "UsrPwd"

    iget-object v11, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v10, "adminUid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v10, "VpnID"

    iget-object v11, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "VpnID"

    aput-object v11, v0, v10

    .line 340
    .local v0, columns:[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v11, v8, v10

    .line 341
    .local v8, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v11, "VPN"

    invoke-virtual {v10, v11, v0, v8, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 348
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #index:I
    .end local v4           #newProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v5           #oldProfile:Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;
    .end local v6           #profileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/VpnInfoPolicy$VpnProfile;>;"
    .end local v8           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v9

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 323
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #uid:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .locals 1
    .parameter "sName"

    .prologue
    .line 1413
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1582
    return-void
.end method

.class public Lcom/android/server/enterprise/WifiPolicy;
.super Landroid/app/enterprise/IWifiPolicy$Stub;
.source "WifiPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final ANONYMOUS_IDENTITY:Ljava/lang/String; = "anonymous_identity"

.field private static final CA_CERT:Ljava/lang/String; = "ca_cert"

.field private static final CLIENT_CERT:Ljava/lang/String; = "client_cert"

.field private static final EAP:Ljava/lang/String; = "eap"

.field private static final IDENTITY:Ljava/lang/String; = "identity"

.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final PHASE2:Ljava/lang/String; = "phase2"

.field private static final PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"

.field private static isBootCompleted:Z


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mSecurityLevel:[Ljava/lang/String;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNetworkSsid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;-><init>()V

    .line 108
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 110
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->toast:Landroid/widget/Toast;

    .line 113
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 120
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Open"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "WEP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WPA/WPA2 PSK"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "802.1x EAP-LEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "802.1x EAP-FAST"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "802.1x EAP-PEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "802.1x EAP-TTLS"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "802.1x EAP-TLS"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    .line 170
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2622
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/WifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    .line 137
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.lock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/WifiPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    sput-boolean p0, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    return p0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 225
    .local v2, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, v6, :cond_1

    .line 228
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v1, v4

    .line 229
    .local v1, ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 236
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 240
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    return v1

    .line 232
    .end local v1           #ret:Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 233
    .local v0, netId:I
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 234
    if-ne v0, v6, :cond_2

    move v1, v4

    .restart local v1       #ret:Z
    :cond_2
    goto :goto_0

    .line 238
    .end local v0           #netId:I
    .end local v1           #ret:Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1       #ret:Z
    goto :goto_1
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .locals 2
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2058
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2060
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2061
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2062
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2064
    :cond_0
    return-void
.end method

.method private alignConfiguredNetworks()V
    .locals 3

    .prologue
    .line 3243
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3244
    .local v1, wc:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3245
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    goto :goto_0

    .line 3247
    :cond_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->enableNetwork(Ljava/lang/String;)Z

    goto :goto_0

    .line 3250
    .end local v1           #wc:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v2, "BLOCKED_NETWORKS"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 3251
    return-void
.end method

.method private asyncDisableNetwork(I)V
    .locals 2
    .parameter "netId"

    .prologue
    .line 2679
    sget-boolean v1, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_0

    .line 2680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.disable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2681
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2682
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2684
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .locals 2
    .parameter "netId"
    .parameter "enableOthers"

    .prologue
    .line 2670
    sget-boolean v1, Lcom/android/server/enterprise/WifiPolicy;->isBootCompleted:Z

    if-eqz v1, :cond_0

    .line 2671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.enable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2672
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2673
    const-string v1, "enableOthers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2674
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2676
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private computeprefixLength(Ljava/net/InetAddress;)I
    .locals 7
    .parameter "mask"

    .prologue
    .line 2611
    const/4 v2, 0x0

    .line 2612
    .local v2, count:I
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v1, v0, v4

    .line 2613
    .local v1, b:B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    .line 2614
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_0

    .line 2615
    add-int/lit8 v2, v2, 0x1

    .line 2613
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2612
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2619
    .end local v1           #b:B
    .end local v3           #i:I
    :cond_2
    return v2
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 2116
    if-nez p0, :cond_1

    .line 2117
    const/4 p0, 0x0

    .line 2123
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 2119
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2120
    .restart local v0       #length:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2123
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .locals 4
    .parameter "ssid"

    .prologue
    .line 1951
    const/4 v0, 0x1

    .line 1952
    .local v0, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1953
    .local v1, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1954
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 1956
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1957
    return v0
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 7
    .parameter "config"
    .parameter "adminUid"

    .prologue
    const/4 v6, 0x0

    .line 2292
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2293
    .local v3, security:Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2294
    .local v0, enterprise:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WEP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2295
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2296
    .local v2, index:I
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 2297
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2298
    if-eqz v2, :cond_0

    .line 2299
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2300
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2301
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 2318
    .end local v2           #index:I
    :cond_0
    :goto_0
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2320
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-eq v4, v5, :cond_1

    .line 2321
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2324
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 2331
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Open"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2333
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 2334
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 2335
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 2333
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2304
    .end local v1           #i:I
    :cond_3
    const-string v4, "WPA/WPA2 PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2305
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2308
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 2310
    :cond_4
    const-string v4, "802.1x EAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2311
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 2312
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2313
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2311
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2339
    .end local v1           #i:I
    :cond_6
    return-void
.end method

.method private enableNetwork(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 3254
    const/4 v0, 0x1

    .line 3255
    .local v0, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3258
    .local v1, token:J
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3259
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 3261
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3262
    return v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    return-void
.end method

.method private enforceWifiPermission()I
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceWifiPermission(Ljava/lang/String;)I
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1263
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getAdminUid()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 208
    .local v1, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 210
    .local v0, adminUid:I
    if-eq v0, v1, :cond_0

    .line 211
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_0
    return v1
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2016
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "blockedSSIDList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2018
    .local v4, var:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2020
    .local v3, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2021
    .local v2, list:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2022
    .local v0, array:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2024
    .end local v0           #array:[Ljava/lang/String;
    .end local v2           #list:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2361
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2362
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "networkLastSSID"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2363
    .local v4, list:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2364
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2365
    .local v2, lastSSIDs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 2366
    .local v6, value:Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2369
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #lastSSIDs:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2342
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 2345
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2347
    .local v1, cv:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2348
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 2349
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v6, "networkSSID"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2352
    :cond_0
    return-object v0
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 10
    .parameter "callingUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2029
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI"

    const-string v9, "blockedSSIDList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2031
    .local v6, var:Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2032
    .local v3, l:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 2033
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2034
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 2035
    .local v5, s:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2034
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2038
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .parameter "netId"

    .prologue
    .line 1996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1997
    .local v5, token:J
    const/4 v3, 0x0

    .line 1998
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_0

    move-object v4, v3

    .line 2009
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v4, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v4

    .line 2001
    .end local v4           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2002
    .local v2, networkList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2003
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, p1, :cond_1

    .line 2004
    move-object v3, v0

    .line 2008
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    .line 2009
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "field"

    .prologue
    .line 739
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 740
    .local v1, wifiCfg:Landroid/net/wifi/WifiConfiguration;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 741
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    .end local v0           #i:I
    :goto_1
    return v0

    .line 740
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 719
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    .line 720
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 726
    .local v0, callingUid:I
    :goto_0
    if-gez p2, :cond_2

    .line 734
    :cond_0
    :goto_1
    return-object v2

    .line 722
    .end local v0           #callingUid:I
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_0

    .line 730
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 731
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 732
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 2687
    invoke-static {p0}, Landroid/app/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ssid"
    .parameter "addrType"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1317
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1319
    .local v0, callingUid:I
    if-nez p1, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-object v4

    .line 1322
    :cond_1
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "adminUid"

    aput-object v5, v1, v8

    const-string v5, "networkSSID"

    aput-object v5, v1, v7

    .line 1325
    .local v1, col:[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 1328
    .local v3, val:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1332
    .local v2, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1333
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .parameter "ssid"

    .prologue
    .line 2377
    const/4 v2, 0x0

    .line 2378
    .local v2, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2379
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    move-object v3, v2

    .line 2391
    .end local v2           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v3

    .line 2382
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2383
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2384
    .local v0, auxNet:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2385
    move-object v2, v0

    .line 2390
    .end local v0           #auxNet:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v2

    .line 2391
    .end local v2           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_0
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 26
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2474
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "adminUid"

    aput-object v24, v4, v23

    const/16 v23, 0x1

    const-string v24, "networkSSID"

    aput-object v24, v4, v23

    .line 2477
    .local v4, col:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    .line 2481
    .local v22, val:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "WIFI_CONF"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2483
    .local v8, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2484
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    .line 2486
    .local v7, cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 2487
    :cond_0
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2607
    :cond_1
    :goto_0
    return-object v5

    .line 2489
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cv:Landroid/content/ContentValues;
    check-cast v7, Landroid/content/ContentValues;

    .line 2493
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v23, "networkSSID"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2494
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 2495
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    goto :goto_0

    .line 2497
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const-string v23, "networkBSSID"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 2498
    const-string v23, "networkKeyMgmt"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2500
    const-string v23, "networkAllowedProtos"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 2502
    const-string v23, "networkAuthAlg"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2505
    const-string v23, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2508
    const-string v23, "networkAllowedGroupProtocols"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2511
    const-string v23, "networkPSK"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2512
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "networkWEPKey1"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2513
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const-string v25, "networkWEPKey2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2514
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const-string v25, "networkWEPKey3"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2515
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const-string v25, "networkWEPKey4"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2516
    const-string v23, "networkWEPKeyId"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2517
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "eap"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkEAP"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2519
    const-string v23, "networkPhase2"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 2520
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "phase2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "auth="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "networkPhase2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2524
    :cond_4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkIdentity"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2526
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "anonymous_identity"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkAnonymousId"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2528
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "password"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkPassword"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2530
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "client_cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkClientCertification"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2532
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "private_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkPrivateKey"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2534
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    const-string v24, "ca_cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkCaCertificate"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2537
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2538
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2539
    .local v6, configAux:Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_5

    .line 2540
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2541
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 2545
    :cond_5
    const-string v23, "networkStaticIpEnabled"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 2546
    .local v15, ipAssignment:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    sget-object v23, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_1
    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2547
    new-instance v23, Landroid/net/LinkProperties;

    invoke-direct/range {v23 .. v23}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2548
    const-string v23, "networkStaticIp"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2549
    .local v20, staticIp:Ljava/lang/String;
    const-string v23, "networkStaticGateway"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2550
    .local v19, staticGateway:Ljava/lang/String;
    const-string v23, "networkStaticPrimaryDns"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2551
    .local v17, staticDns1:Ljava/lang/String;
    const-string v23, "networkStaticSecondaryDns"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2552
    .local v18, staticDns2:Ljava/lang/String;
    const-string v23, "networkStaticSubnetMask"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2554
    .local v21, staticSubnetMask:Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 2556
    :try_start_0
    invoke-static/range {v20 .. v20}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 2558
    .local v13, inetAddr:Ljava/net/InetAddress;
    if-eqz v21, :cond_7

    .line 2559
    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 2561
    .local v14, inetsubNetAddr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v16

    .line 2565
    .end local v14           #inetsubNetAddr:Ljava/net/InetAddress;
    .local v16, maskLength:I
    :goto_2
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LinkAddress;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2575
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :goto_3
    if-eqz v19, :cond_9

    .line 2577
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2578
    .local v12, gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2587
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :goto_4
    if-eqz v17, :cond_a

    .line 2589
    :try_start_2
    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2590
    .local v9, dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2598
    .end local v9           #dns1Addr:Ljava/net/InetAddress;
    :goto_5
    if-eqz v18, :cond_1

    .line 2600
    :try_start_3
    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 2601
    .local v10, dns2Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2602
    .end local v10           #dns2Addr:Ljava/net/InetAddress;
    :catch_0
    move-exception v11

    .line 2603
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2546
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v17           #staticDns1:Ljava/lang/String;
    .end local v18           #staticDns2:Ljava/lang/String;
    .end local v19           #staticGateway:Ljava/lang/String;
    .end local v20           #staticIp:Ljava/lang/String;
    .end local v21           #staticSubnetMask:Ljava/lang/String;
    :cond_6
    sget-object v23, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto/16 :goto_1

    .line 2563
    .restart local v13       #inetAddr:Ljava/net/InetAddress;
    .restart local v17       #staticDns1:Ljava/lang/String;
    .restart local v18       #staticDns2:Ljava/lang/String;
    .restart local v19       #staticGateway:Ljava/lang/String;
    .restart local v20       #staticIp:Ljava/lang/String;
    .restart local v21       #staticSubnetMask:Ljava/lang/String;
    :cond_7
    const/16 v16, 0x18

    .restart local v16       #maskLength:I
    goto :goto_2

    .line 2566
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :catch_1
    move-exception v11

    .line 2567
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2570
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_8
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 2571
    .restart local v13       #inetAddr:Ljava/net/InetAddress;
    const/16 v16, 0x18

    .line 2572
    .restart local v16       #maskLength:I
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LinkAddress;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_3

    .line 2579
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :catch_2
    move-exception v11

    .line 2580
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2583
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_9
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2584
    .restart local v12       #gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_4

    .line 2591
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :catch_3
    move-exception v11

    .line 2592
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2595
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_a
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2596
    .restart local v9       #dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_5
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .locals 8
    .parameter "ssid"

    .prologue
    .line 1962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1963
    .local v4, token:J
    const/4 v2, -0x1

    .line 1964
    .local v2, netId:I
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    .line 1965
    const/4 v6, -0x1

    .line 1975
    :goto_0
    return v6

    .line 1967
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1968
    .local v3, netList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1969
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1970
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1974
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 1975
    goto :goto_0
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "adminUid"
    .parameter "ssid"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 452
    .local v1, enterpriseNetwork:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_5

    .line 453
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 472
    :goto_0
    return-object v2

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_0

    .line 458
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 459
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v5

    goto :goto_0

    .line 460
    :cond_2
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 462
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, eap:Ljava/lang/String;
    const-string v2, "PEAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    goto :goto_0

    .line 465
    :cond_3
    const-string v2, "TTLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 466
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    goto :goto_0

    .line 467
    :cond_4
    const-string v2, "TLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 468
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    goto :goto_0

    .line 472
    .end local v0           #eap:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 593
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 595
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-ltz p2, :cond_0

    const/4 v3, 0x3

    if-le p2, v3, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-object v2

    .line 599
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 600
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 601
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    .line 602
    const-string v2, "*"

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 3227
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3229
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3230
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 1416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1417
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1419
    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 2067
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    .line 2068
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isHoneycombOrHigher()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 196
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 198
    .local v0, mainVersion:I
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 201
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 1987
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1988
    :cond_0
    const/4 v1, 0x1

    .line 1992
    :goto_0
    return v1

    .line 1991
    :cond_1
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1992
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isNetworkSecure(II)Z
    .locals 5
    .parameter "netId"
    .parameter "minSec"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1862
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    .line 1863
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1864
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1865
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-le p2, v3, :cond_1

    .line 1875
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    move v1, v2

    .line 1868
    goto :goto_0

    .line 1874
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string v1, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1875
    goto :goto_0
.end method

.method private declared-synchronized isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 3234
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3237
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v1, "*"

    invoke-static {v0, v1, p1}, Lcom/android/server/enterprise/Utils;->isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 3239
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiSsidRestrictionActive(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    .line 3218
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "wifiSsidRestriction"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3223
    :goto_0
    return v1

    .line 3220
    :catch_0
    move-exception v0

    .line 3221
    .local v0, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const-string v1, "WifiPolicyService"

    invoke-virtual {v0}, Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1943
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1946
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2863
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "WIFI_SSID_BLACK_WHITE_LIST"

    const-string v11, "adminUid"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2866
    .local v7, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 2867
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2907
    :cond_0
    monitor-exit p0

    return-object v5

    .line 2871
    :cond_1
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    .line 2872
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v10, "BLACKLIST"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    const-string v10, "WHITELIST"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 2878
    .local v8, uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 2881
    .local v5, ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2882
    .local v6, uid:Ljava/lang/Integer;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2883
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v9, "BLACKLIST"

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    const-string v9, "WHITELIST"

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2885
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2863
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .end local v6           #uid:Ljava/lang/Integer;
    .end local v7           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2888
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    .restart local v7       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v9, 0x3

    :try_start_2
    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "WIFI_SSID"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "WIFI_LIST_TYPE"

    aput-object v10, v1, v9

    .line 2891
    .local v1, columns:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v10, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v9, v10, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2894
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2895
    .local v2, cv:Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v10, "WIFI_LIST_TYPE"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v10, "WIFI_SSID"

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2900
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 2901
    .restart local v6       #uid:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2902
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "*"

    invoke-static {v10, v9, v11}, Lcom/android/server/enterprise/Utils;->makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiNetworkSsid:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private loadWifiManager()V
    .locals 3

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1938
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1940
    :cond_0
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 2127
    array-length v1, p1

    .line 2128
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2130
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2132
    .end local v0           #i:I
    :goto_1
    return v0

    .line 2129
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2132
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .locals 8
    .parameter "value"
    .parameter "strings"

    .prologue
    .line 2158
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 2159
    .local v1, bitset:Ljava/util/BitSet;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2160
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2161
    .local v6, vals:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 2162
    .local v5, val:Ljava/lang/String;
    invoke-static {v5, p2}, Lcom/android/server/enterprise/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2163
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 2164
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 2161
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2168
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v5           #val:Ljava/lang/String;
    .end local v6           #vals:[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 2136
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2137
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 2143
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 2145
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2146
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2150
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 2151
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "str"
    .parameter "value"

    .prologue
    .line 1409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1410
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1411
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1412
    return v0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 2105
    if-nez p0, :cond_1

    .line 2106
    const/4 p0, 0x0

    .line 2112
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 2108
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2109
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2110
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .locals 1
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2052
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2053
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2054
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2055
    return-void
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .locals 7
    .parameter "callingUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2043
    .local p2, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2044
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2045
    .local v1, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2047
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string v5, "blockedSSIDList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2049
    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2693
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2694
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2695
    const-string v1, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2697
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2698
    return-void
.end method

.method private setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    .line 695
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 702
    .local v0, callingUid:I
    :goto_0
    if-eqz p3, :cond_0

    if-gez p2, :cond_3

    .line 703
    :cond_0
    const/4 v2, 0x0

    .line 713
    :cond_1
    :goto_1
    return v2

    .line 697
    .end local v0           #callingUid:I
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_0

    .line 706
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 707
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 708
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 709
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v3, v3, p2

    invoke-virtual {v3, p3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 711
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1
.end method

.method private setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "ssid"
    .parameter "addr"
    .parameter "addrType"

    .prologue
    .line 1299
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v2

    .line 1301
    .local v2, callingUid:I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1302
    :cond_0
    const/4 v6, 0x0

    .line 1312
    :goto_0
    return v6

    .line 1304
    :cond_1
    const/4 v6, 0x1

    .line 1306
    .local v6, ret:Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1307
    .local v5, cv:Landroid/content/ContentValues;
    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v3, "networkSSID"

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1311
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 18
    .parameter "callingUid"
    .parameter "config"

    .prologue
    .line 2398
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2399
    .local v6, cv:Landroid/content/ContentValues;
    const-string v1, "networkSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    const-string v1, "networkBSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2401
    const-string v1, "networkKeyMgmt"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    const-string v1, "networkAllowedProtos"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    const-string v1, "networkAuthAlg"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    const-string v1, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    const-string v1, "networkAllowedGroupProtocols"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    const-string v1, "networkPSK"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    const-string v1, "networkWEPKey1"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    const-string v1, "networkWEPKey2"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    const-string v1, "networkWEPKey3"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const-string v1, "networkWEPKey4"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    const-string v1, "networkWEPKeyId"

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2417
    const-string v1, "networkEAP"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "eap"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v2, "phase2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v15

    .line 2420
    .local v15, phase2:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 2421
    const-string v1, "networkPhase2"

    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    :cond_0
    const-string v1, "networkIdentity"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "identity"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    const-string v1, "networkAnonymousId"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "anonymous_identity"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    const-string v1, "networkPassword"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "password"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v1, "networkClientCertification"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "client_cert"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const-string v1, "networkPrivateKey"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "private_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    const-string v1, "networkCaCertificate"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v3, "ca_cert"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    const-string v2, "networkStaticIpEnabled"

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2438
    const/4 v12, 0x0

    .local v12, ipAddr:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, subnetAddr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, gatewayAddr:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, dns1Addr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2439
    .local v8, dns2Addr:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2440
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2441
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkAddress;

    .line 2442
    .local v14, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 2443
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 2447
    .end local v14           #linkAddress:Landroid/net/LinkAddress;
    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/RouteInfo;

    .line 2448
    .local v16, route:Landroid/net/RouteInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2449
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 2453
    .end local v16           #route:Landroid/net/RouteInfo;
    :cond_3
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2454
    .local v9, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2455
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 2457
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2458
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 2460
    :cond_5
    const-string v1, "networkStaticIp"

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    const-string v1, "networkStaticGateway"

    invoke-virtual {v6, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    const-string v1, "networkStaticPrimaryDns"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    const-string v1, "networkStaticSecondaryDns"

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    const-string v1, "networkStaticSubnetMask"

    move-object/from16 v0, v17

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2466
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const-string v4, "networkSSID"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 2436
    .end local v7           #dns1Addr:Ljava/lang/String;
    .end local v8           #dns2Addr:Ljava/lang/String;
    .end local v9           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v10           #gatewayAddr:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ipAddr:Ljava/lang/String;
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v17           #subnetAddr:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "ssid"
    .parameter "lastssid"

    .prologue
    .line 1132
    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "networkLastSSID"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, lastSSIDs:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1137
    .local v6, newList:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_2

    .line 1138
    if-eqz p2, :cond_1

    .line 1139
    move-object v2, p2

    .line 1140
    .local v2, last:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1141
    .local v5, list:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v7, v0, v1

    .line 1143
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #last:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #list:[Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_2
    if-eqz p1, :cond_3

    .line 1154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v8

    return v8
.end method

.method private setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 530
    .local v0, callingUid:I
    if-eqz p3, :cond_0

    if-ltz p2, :cond_0

    const/4 v4, 0x3

    if-le p2, v4, :cond_2

    .line 531
    :cond_0
    const/4 v3, 0x0

    .line 548
    :cond_1
    :goto_0
    return v3

    .line 533
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 534
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 535
    .local v3, ret:Z
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 536
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 538
    .local v2, length:I
    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_4

    :cond_3
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 540
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v4, p2

    .line 545
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 546
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 543
    :cond_4
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    goto :goto_1
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .locals 2
    .parameter "list"

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .locals 10

    .prologue
    .line 2072
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2073
    const/4 v5, 0x1

    .line 2074
    .local v5, success:Z
    const/4 v4, 0x0

    .line 2075
    .local v4, showMsg:Z
    const/4 v0, 0x0

    .line 2076
    .local v0, hasChanged:Z
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2077
    .local v3, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2078
    .local v6, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x1

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v8, :cond_0

    .line 2079
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2081
    :cond_1
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v7, :cond_2

    .line 2083
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2084
    .local v1, i:Landroid/content/Intent;
    const-string v7, "message"

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v9, 0x10401af

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2087
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2090
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 2091
    const/4 v0, 0x1

    goto :goto_0

    .line 2095
    .end local v6           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2096
    const-string v7, "WifiPolicyService"

    const-string v8, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    const/4 v5, 0x0

    .line 2099
    :cond_4
    monitor-exit p0

    return v5

    .line 2072
    .end local v0           #hasChanged:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #showMsg:Z
    .end local v5           #success:Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public activateWifiSsidRestriction(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 3195
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3196
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "wifiSsidRestriction"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 3198
    .local v1, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3199
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3200
    return v1
.end method

.method public addBlockedNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1181
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 1182
    const/4 v1, 0x0

    .line 1190
    :goto_0
    return v1

    .line 1185
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    .line 1188
    const-string v1, "BLOCKED_NETWORKS"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1190
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public addWifiSsidToBlackList(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2928
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 2929
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 2930
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2931
    .local v4, s:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2932
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "WIFI_SSID"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2934
    const-string v5, "WIFI_LIST_TYPE"

    const-string v6, "BLACKLIST"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 2938
    :goto_1
    goto :goto_0

    .line 2935
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2939
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 2940
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 2941
    return v3
.end method

.method public addWifiSsidToWhiteList(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3067
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3068
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 3069
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3070
    .local v4, s:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3071
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "WIFI_SSID"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3072
    const-string v5, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3073
    const-string v5, "WIFI_LIST_TYPE"

    const-string v6, "WHITELIST"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 3077
    :goto_1
    goto :goto_0

    .line 3074
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 3078
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3079
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3080
    return v3
.end method

.method public allowWifiApSettingUserModification(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    .line 2832
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 2833
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "allowWifiApSettingModification"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public clearWifiSsidBlackList()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2999
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3000
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 3001
    .local v2, result:Z
    new-array v1, v7, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    const-string v6, "WIFI_LIST_TYPE"

    aput-object v6, v1, v4

    .line 3004
    .local v1, columns:[Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "BLACKLIST"

    aput-object v6, v3, v4

    .line 3007
    .local v3, values:[Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    .line 3010
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3011
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3012
    return v2

    :cond_0
    move v2, v5

    .line 3007
    goto :goto_0
.end method

.method public clearWifiSsidWhiteList()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3136
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3137
    .local v0, callingUid:I
    const/4 v2, 0x1

    .line 3138
    .local v2, result:Z
    new-array v1, v7, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v5

    const-string v6, "WIFI_LIST_TYPE"

    aput-object v6, v1, v4

    .line 3141
    .local v1, columns:[Ljava/lang/String;
    new-array v3, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "WHITELIST"

    aput-object v6, v3, v4

    .line 3144
    .local v3, values:[Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v7, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v6, v7, v1, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    .line 3147
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3148
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3149
    return v2

    :cond_0
    move v2, v5

    .line 3144
    goto :goto_0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 7
    .parameter "config"
    .parameter "netSSID"

    .prologue
    .line 2260
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2262
    if-nez p1, :cond_1

    .line 2286
    :cond_0
    :goto_0
    return-void

    .line 2266
    :cond_1
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2268
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2270
    .local v0, adminUid:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 2279
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 2284
    .local v1, taskToUpdateNetwork:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2285
    .local v2, threadToUpdateNetwork:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized edmUpdateConfiguredNetworks()V
    .locals 12

    .prologue
    .line 2198
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2199
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 2253
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2202
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v6

    .line 2206
    .local v6, lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2211
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v2

    .line 2212
    .local v2, enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2213
    .local v0, confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v4

    .line 2214
    .local v4, enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2217
    .local v3, enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2218
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2219
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2220
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2198
    .end local v0           #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4           #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 2225
    .restart local v0       #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v2       #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3       #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4       #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2226
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2228
    .local v8, notQuotedSSID:Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2232
    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_2

    .line 2236
    :cond_7
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/sec/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2237
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_2

    .line 2240
    :cond_8
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_2

    .line 2245
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #notQuotedSSID:Ljava/lang/String;
    :cond_9
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2249
    .local v7, newSSIDsList:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2250
    .local v9, value:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2252
    .end local v9           #value:Ljava/lang/String;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public getAllWifiSsidBlackLists()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3026
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 3028
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    .line 3029
    .local v2, ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v2, :cond_1

    .line 3030
    const/4 v1, 0x0

    .line 3042
    :cond_0
    return-object v1

    .line 3032
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3033
    .local v4, uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3035
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3036
    .local v3, uid:Ljava/lang/Integer;
    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    .line 3037
    .local v5, wci:Landroid/app/enterprise/WifiControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3038
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "BLACKLIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    .line 3039
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllWifiSsidWhiteLists()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/WifiControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3164
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 3166
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    move-result-object v2

    .line 3167
    .local v2, ssidMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    if-nez v2, :cond_1

    .line 3168
    const/4 v1, 0x0

    .line 3180
    :cond_0
    return-object v1

    .line 3170
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3171
    .local v4, uidSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3173
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/WifiControlInfo;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3174
    .local v3, uid:Ljava/lang/Integer;
    new-instance v5, Landroid/app/enterprise/WifiControlInfo;

    invoke-direct {v5}, Landroid/app/enterprise/WifiControlInfo;-><init>()V

    .line 3175
    .local v5, wci:Landroid/app/enterprise/WifiControlInfo;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/enterprise/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 3176
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "WHITELIST"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v5, Landroid/app/enterprise/WifiControlInfo;->entries:Ljava/util/List;

    .line 3177
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 7

    .prologue
    .line 1693
    const/4 v1, 0x1

    .line 1694
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowUserChanges"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1697
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1698
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1699
    move v1, v2

    .line 1703
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1645
    const/4 v2, 0x1

    .line 1646
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "allowUserProfiles"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1648
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1649
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1650
    move v2, v3

    .line 1654
    .end local v3           #value:Z
    :cond_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 1655
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401b0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1658
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1660
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1228
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1229
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    .local v0, aux:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1232
    .end local v0           #aux:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getDHCPEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1398
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1401
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1403
    .local v0, ret:I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1405
    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1464
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    const/4 v0, 0x0

    .line 1468
    :goto_0
    return-object v0

    .line 1467
    :cond_0
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultIp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1441
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1442
    const/4 v0, 0x0

    .line 1445
    :goto_0
    return-object v0

    .line 1444
    :cond_0
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1487
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    const/4 v0, 0x0

    .line 1491
    :goto_0
    return-object v0

    .line 1490
    :cond_0
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1509
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1510
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    const/4 v0, 0x0

    .line 1514
    :goto_0
    return-object v0

    .line 1513
    :cond_0
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1532
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1533
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1534
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return-object v0

    .line 1536
    :cond_0
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 7

    .prologue
    .line 1811
    const/4 v1, 0x0

    .line 1812
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "minimumRequiredSecurity"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1814
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1815
    .local v2, value:I
    if-le v2, v1, :cond_0

    .line 1816
    move v1, v2

    goto :goto_0

    .line 1819
    .end local v2           #value:I
    :cond_1
    return v1
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ssid"

    .prologue
    .line 941
    const-string v1, "anonymous_identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 942
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ssid"

    .prologue
    .line 876
    const-string v2, "ca_cert"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 877
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 879
    const-string v2, "keystore://CACERT_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 881
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ssid"

    .prologue
    .line 891
    const-string v2, "client_cert"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 892
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 894
    const-string v2, "keystore://USRCERT_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 896
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 1287
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1289
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1290
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1291
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 1293
    :cond_0
    return v2
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ssid"

    .prologue
    .line 851
    const-string v1, "eap"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 852
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1352
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ssid"

    .prologue
    .line 933
    const-string v1, "identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 934
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1344
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 443
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 679
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 680
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-object v2

    .line 683
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 684
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 685
    const-string v2, "*"

    goto :goto_0
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 921
    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 922
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, password:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    const-string v2, "*"

    .line 926
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ssid"

    .prologue
    .line 861
    const-string v2, "phase2"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 862
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, phase2:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 864
    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 866
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1360
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ssid"

    .prologue
    .line 906
    const-string v2, "private_key"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 907
    .local v0, index:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 909
    const-string v2, "keystore://USRPKEY_"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 911
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 309
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v0, SSIDList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 314
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 316
    .local v1, cv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 317
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1368
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1376
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 615
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 624
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 633
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 642
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .locals 2
    .parameter "ssid"

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 509
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 510
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 513
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 515
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHidden()Z
    .locals 7

    .prologue
    .line 1919
    const/4 v1, 0x0

    .line 1920
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "passwordHidden"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1923
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1924
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1925
    move v1, v2

    goto :goto_0

    .line 1928
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x0

    return v0
.end method

.method public getTlsCertificateSecurityLevel()I
    .locals 7

    .prologue
    .line 1844
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1845
    const/4 v2, 0x0

    .line 1847
    .local v2, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1849
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1850
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 1851
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1854
    .end local v3           #value:Ljava/lang/Integer;
    :cond_1
    return v2
.end method

.method public getWifiApSetting()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    .line 2802
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 2803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2809
    .local v0, token:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2811
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2809
    return-object v2

    .line 2811
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .locals 11
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1047
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1048
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1050
    .local v0, adminUid:I
    new-instance v4, Landroid/app/enterprise/WifiAdminProfile;

    invoke-direct {v4}, Landroid/app/enterprise/WifiAdminProfile;-><init>()V

    .line 1052
    .local v4, ret:Landroid/app/enterprise/WifiAdminProfile;
    new-array v1, v10, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string v6, "networkSSID"

    aput-object v6, v1, v8

    .line 1055
    .local v1, col:[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1058
    .local v5, val:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v6, v8, v1, v5, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1062
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_e

    .line 1063
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1068
    .local v2, cv:Landroid/content/ContentValues;
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1069
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 1071
    :cond_0
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1072
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 1074
    :cond_1
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1075
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 1077
    :cond_2
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1078
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 1080
    :cond_3
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1081
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 1083
    :cond_4
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1084
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 1086
    :cond_5
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1087
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 1089
    :cond_6
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1090
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 1092
    :cond_7
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1093
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 1095
    :cond_8
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1096
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 1098
    :cond_9
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1099
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 1101
    :cond_a
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1102
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1103
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 1104
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string v7, "keystore://CACERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1108
    :cond_b
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1109
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1110
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 1111
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    const-string v7, "keystore://USRCERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1115
    :cond_c
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1116
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1117
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 1118
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "keystore://USRPKEY_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1122
    :cond_d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1124
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #ret:Landroid/app/enterprise/WifiAdminProfile;
    :goto_0
    return-object v4

    .restart local v4       #ret:Landroid/app/enterprise/WifiAdminProfile;
    :cond_e
    move-object v4, v7

    .line 1065
    goto :goto_0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 2181
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2182
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    .line 2183
    .local v0, ssidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "ssid"
    .parameter "showMsg"

    .prologue
    .line 1243
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->isWifiNetworkSsidBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1245
    .local v1, ret:Z
    :goto_0
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 1246
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1247
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401ad

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1251
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    return v1

    .line 1243
    .end local v1           #ret:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 5
    .parameter "netId"
    .parameter "showMsg"

    .prologue
    .line 1887
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1888
    invoke-virtual {p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v1

    .line 1889
    .local v1, ret:Z
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 1890
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1895
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public isWifiAllowed(Z)Z
    .locals 7
    .parameter "showMsg"

    .prologue
    .line 1606
    const/4 v1, 0x1

    .line 1607
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1610
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1611
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1612
    move v1, v2

    .line 1618
    .end local v2           #value:Z
    :cond_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1619
    const/4 v1, 0x1

    .line 1628
    :cond_2
    return v1
.end method

.method public isWifiApSettingUserModificationAllowed()Z
    .locals 7

    .prologue
    .line 2848
    const/4 v1, 0x1

    .line 2849
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifiApSettingModification"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2851
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2852
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 2853
    move v1, v2

    .line 2857
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public isWifiSsidRestrictionActive()Z
    .locals 2

    .prologue
    .line 3212
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3213
    .local v0, callingUid:I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result v1

    return v1
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 7

    .prologue
    .line 3290
    const/4 v1, 0x1

    .line 3291
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3294
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3295
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 3296
    move v1, v2

    .line 3300
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 157
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .parameter "uid"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 163
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 168
    return-void
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 1201
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1203
    .local v0, callingUid:I
    if-nez p1, :cond_0

    move v1, v4

    .line 1218
    :goto_0
    return v1

    .line 1206
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    .line 1207
    const/4 v1, 0x1

    .line 1208
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1210
    .local v2, token:J
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 1213
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1216
    const-string v4, "BLOCKED_NETWORKS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"

    .prologue
    .line 327
    const/4 v2, 0x1

    .line 329
    .local v2, ret:Z
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    .line 333
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 340
    .local v0, callingUid:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 342
    .local v3, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 343
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 344
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 345
    const/4 v5, 0x0

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 347
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    .end local v3           #token:J
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v0, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 354
    const-string v5, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 356
    return v2

    .line 335
    .end local v0           #callingUid:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_0
.end method

.method public removeWifiSsidFromBlackList(Ljava/util/List;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2963
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 2964
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 2965
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2966
    .local v4, s:Ljava/lang/String;
    new-array v1, v11, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const-string v8, "WIFI_SSID"

    aput-object v8, v1, v6

    const-string v8, "WIFI_LIST_TYPE"

    aput-object v8, v1, v10

    .line 2970
    .local v1, columns:[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v4, v5, v6

    const-string v8, "BLACKLIST"

    aput-object v8, v5, v10

    .line 2973
    .local v5, values:[Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v1, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v3, v6

    .line 2976
    :goto_1
    goto :goto_0

    :cond_0
    move v3, v7

    .line 2973
    goto :goto_1

    .line 2977
    .end local v1           #columns:[Ljava/lang/String;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 2978
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 2979
    return v3
.end method

.method public removeWifiSsidFromWhiteList(Ljava/util/List;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, ssid:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3101
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3102
    .local v0, callingUid:I
    const/4 v3, 0x1

    .line 3103
    .local v3, result:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3104
    .local v4, s:Ljava/lang/String;
    new-array v1, v11, [Ljava/lang/String;

    const-string v8, "adminUid"

    aput-object v8, v1, v7

    const-string v8, "WIFI_SSID"

    aput-object v8, v1, v6

    const-string v8, "WIFI_LIST_TYPE"

    aput-object v8, v1, v10

    .line 3108
    .local v1, columns:[Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v4, v5, v6

    const-string v8, "WHITELIST"

    aput-object v8, v5, v10

    .line 3111
    .local v5, values:[Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    invoke-virtual {v8, v9, v1, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v3, v6

    .line 3114
    :goto_1
    goto :goto_0

    :cond_0
    move v3, v7

    .line 3111
    goto :goto_1

    .line 3115
    .end local v1           #columns:[Ljava/lang/String;
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #values:[Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 3116
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->alignConfiguredNetworks()V

    .line 3117
    return v3
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1675
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserChanges"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1679
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_CHANGES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1681
    return v1
.end method

.method public setAllowUserProfiles(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1633
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1634
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserProfiles"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1638
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1640
    return v1
.end method

.method public setDHCPEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1384
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1385
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1393
    :goto_0
    return v3

    .line 1388
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1390
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1392
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    .line 1393
    goto :goto_0

    .line 1390
    .end local v0           #ret:Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1451
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1452
    const/4 v0, 0x0

    .line 1458
    :cond_0
    :goto_0
    return v0

    .line 1454
    :cond_1
    const/4 v0, 0x0

    .line 1455
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1428
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1429
    const/4 v0, 0x0

    .line 1435
    :cond_0
    :goto_0
    return v0

    .line 1431
    :cond_1
    const/4 v0, 0x0

    .line 1432
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1473
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1474
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1475
    const/4 v0, 0x0

    .line 1481
    :cond_0
    :goto_0
    return v0

    .line 1477
    :cond_1
    const/4 v0, 0x0

    .line 1478
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1479
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1497
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    const/4 v0, 0x0

    .line 1504
    :cond_0
    :goto_0
    return v0

    .line 1500
    :cond_1
    const/4 v0, 0x0

    .line 1501
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1519
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1522
    const/4 v1, 0x0

    .line 1527
    :goto_0
    return v1

    .line 1524
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1525
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    move v1, v0

    .line 1527
    goto :goto_0
.end method

.method public setMinimumRequiredSecurity(I)Z
    .locals 16
    .parameter "secType"

    .prologue
    .line 1750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v1

    .line 1753
    .local v1, callingUid:I
    if-ltz p1, :cond_0

    const/4 v13, 0x7

    move/from16 v0, p1

    if-gt v0, v13, :cond_0

    const/4 v13, 0x4

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 1755
    :cond_0
    const/4 v8, 0x0

    .line 1793
    :goto_0
    return v8

    .line 1758
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v4

    .line 1760
    .local v4, lastSec:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    move/from16 v0, p1

    invoke-virtual {v13, v1, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 1763
    .local v8, ret:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1765
    .local v12, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1766
    .local v7, newSec:I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1767
    .local v11, value:I
    if-le v11, v7, :cond_2

    .line 1768
    move v7, v11

    goto :goto_1

    .line 1775
    .end local v11           #value:I
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1776
    .local v9, token:J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1777
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 1778
    .local v5, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1779
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1780
    .local v6, netId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1781
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_2

    .line 1782
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1784
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_2

    .line 1788
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #netId:I
    :cond_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1791
    const-string v13, "MINIMUM_SECURITY_LEVEL"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 782
    const-string v1, "anonymous_identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 783
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 821
    const-string v1, "ca_cert"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 822
    .local v0, index:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 823
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 825
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 806
    const-string v1, "client_cert"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 807
    .local v0, index:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 808
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 810
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "ssid"
    .parameter "enable"

    .prologue
    .line 1271
    if-nez p1, :cond_0

    .line 1272
    const/4 v2, 0x0

    .line 1283
    :goto_0
    return v2

    .line 1275
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission(Ljava/lang/String;)I

    move-result v0

    .line 1277
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1278
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 1279
    .local v2, ret:Z
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_1
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1280
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1281
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 1279
    :cond_1
    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_1
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1348
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 768
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 769
    const-string v1, "WifiPolicyService"

    const-string v2, "Identity value excedes maximum length (32)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v1, 0x0

    .line 773
    :goto_0
    return v1

    .line 772
    :cond_0
    const-string v1, "identity"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 773
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1340
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 365
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 367
    .local v0, callingUid:I
    if-nez p2, :cond_1

    move v3, v4

    .line 435
    :cond_0
    :goto_0
    return v3

    .line 371
    :cond_1
    const-string v5, "FAST"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LEAP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    .line 372
    goto :goto_0

    .line 375
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 376
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 377
    .local v3, ret:Z
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 379
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 380
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 381
    const-string v5, "NONE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 382
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 403
    :cond_4
    :goto_1
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 404
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 409
    :cond_5
    const/4 v4, -0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v3

    .line 411
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNetworkLinkSecurity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int/2addr v3, v4

    .line 414
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 415
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 424
    :cond_6
    const-string v4, "NONE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 425
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_e

    .line 426
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_7

    .line 427
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v2

    .line 425
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 383
    .end local v2           #i:I
    :cond_8
    const-string v5, "WEP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 384
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 385
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 386
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 387
    :cond_9
    const-string v4, "PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 388
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 389
    :cond_a
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 390
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 391
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 392
    const-string v4, "PEAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 393
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 394
    :cond_b
    const-string v4, "TTLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 395
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TTLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 396
    :cond_c
    const-string v4, "TLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 397
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    :cond_d
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 431
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 433
    const-string v4, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 655
    .local v0, callingUid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 656
    :cond_0
    const/4 v2, 0x0

    .line 670
    :cond_1
    :goto_0
    return v2

    .line 659
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 660
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 661
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_1

    .line 662
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 663
    iput-object p2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 667
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 668
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 665
    :cond_3
    invoke-static {p2}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 754
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 755
    const-string v1, "WifiPolicyService"

    const-string v2, "Password excedes maximum length (32)"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v1, 0x0

    .line 759
    :goto_0
    return v1

    .line 758
    :cond_0
    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 759
    .local v0, index:I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 792
    if-eqz p2, :cond_0

    .line 793
    const-string v1, "phase2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 794
    .local v0, index:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 796
    .end local v0           #index:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1356
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 836
    const-string v1, "private_key"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldIndex(Ljava/lang/String;)I

    move-result v0

    .line 837
    .local v0, index:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 838
    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 840
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .locals 13
    .parameter "ssid"

    .prologue
    const/4 v10, 0x0

    .line 250
    const/4 v6, 0x0

    .line 252
    .local v6, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 254
    .local v0, callingUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-le v11, v12, :cond_2

    .line 255
    :cond_0
    const-string v11, "WifiPolicyService"

    const-string v12, "SSID is invalid or excedes maximum length (32)"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    :goto_0
    return v10

    .line 260
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 261
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 262
    .local v4, lastSSID:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 263
    const/4 v10, 0x1

    goto :goto_0

    .line 267
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 268
    .local v7, token:J
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v1

    .line 269
    .local v1, checkEnterprise:Z
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    if-nez v1, :cond_1

    .line 274
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 275
    const/4 v11, -0x1

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 277
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 278
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    .line 280
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 284
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 285
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 286
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 287
    .local v9, wifi:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v4, :cond_5

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 289
    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_1

    .line 292
    .end local v9           #wifi:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 293
    if-eqz v4, :cond_9

    .line 294
    invoke-static {v4}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_8
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    const-string v10, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v10, v6

    .line 305
    goto/16 :goto_0

    .line 296
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_9
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1364
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1372
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 558
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 568
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 578
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 588
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .locals 4
    .parameter "ssid"
    .parameter "keyId"

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 484
    .local v0, callingUid:I
    const/4 v3, 0x1

    if-lt p2, v3, :cond_0

    const/4 v3, 0x4

    if-le p2, v3, :cond_1

    .line 485
    :cond_0
    const/4 v2, 0x0

    .line 499
    :goto_0
    return v2

    .line 488
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 490
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 493
    add-int/lit8 v3, p2, -0x1

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 494
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 495
    .local v2, ret:Z
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 497
    .end local v2           #ret:Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #ret:Z
    goto :goto_0
.end method

.method public setPasswordHidden(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 1907
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1908
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "passwordHidden"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1717
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1718
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "promptCredentials"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1722
    .local v1, ret:Z
    const-string v2, "PROMPT_CREDENTIALS_ENABLED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1724
    return v1
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .locals 7
    .parameter "level"

    .prologue
    .line 1828
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1830
    .local v0, callingUid:I
    if-ltz p1, :cond_0

    const/4 v4, 0x1

    if-le p1, v4, :cond_1

    .line 1831
    :cond_0
    const/4 v1, 0x0

    .line 1839
    :goto_0
    return v1

    .line 1834
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1837
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1838
    .local v2, token:J
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setWifi(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    .line 1551
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1552
    .local v0, adminUid:I
    const/4 v1, 0x1

    .line 1553
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1555
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1559
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1561
    if-eqz p1, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1562
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1567
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1569
    return v1

    .line 1564
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public setWifiAllowed(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    .line 1580
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1581
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1583
    .local v1, ret:Z
    if-nez p1, :cond_1

    .line 1584
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_0

    .line 1585
    const/4 v4, 0x0

    .line 1595
    :goto_0
    return v4

    .line 1587
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1588
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1589
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1593
    .end local v2           #token:J
    :cond_1
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v4, v1

    .line 1595
    goto :goto_0
.end method

.method public setWifiApSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"
    .parameter "securityType"
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 2723
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 2725
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    .line 2726
    :cond_0
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSID("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is null or empty or more than 32 characters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :goto_0
    return v1

    .line 2731
    :cond_1
    const-string v4, "Open"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2732
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Security Type ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2737
    :cond_2
    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-ge v4, v5, :cond_4

    .line 2739
    :cond_3
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Password("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is null or empty or less than 8 characters for WPA PSK security type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2745
    :cond_4
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2746
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2747
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2748
    const-string v4, ""

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2749
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2750
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v6, ""

    aput-object v6, v4, v5

    .line 2752
    const-string v4, "WPA_PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2753
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 2754
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 2755
    iput-object p3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2763
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2765
    .local v2, token:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6

    .line 2766
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2767
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2779
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2760
    .end local v2           #token:J
    :cond_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 2774
    .restart local v2       #token:J
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    .line 2776
    .local v1, result:Z
    const-string v4, "application_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/ApplicationPolicy;

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy;->stopApp(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2779
    .end local v1           #result:Z
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .locals 10
    .parameter "profile"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 947
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 948
    const/4 v1, 0x1

    .line 950
    .local v1, ret:Z
    if-nez p1, :cond_0

    .line 1042
    :goto_0
    return v5

    .line 953
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 954
    .local v3, token:J
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 955
    .local v0, isEnterprise:Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 959
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 960
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v5

    .line 961
    .local v2, sec:Ljava/lang/String;
    const-string v6, "PSK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 962
    const-string v6, "WifiPolicyService"

    const-string v7, "PSK not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 965
    :cond_1
    const-string v6, "WEP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 966
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-lt v6, v8, :cond_2

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-le v6, v9, :cond_3

    .line 967
    :cond_2
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKeyId invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 970
    :cond_3
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v8, :cond_5

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 972
    :cond_4
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey1 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 975
    :cond_5
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 977
    :cond_6
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey2 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 980
    :cond_7
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 982
    :cond_8
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey3 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 985
    :cond_9
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v9, :cond_b

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v6, :cond_a

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 987
    :cond_a
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey4 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 994
    .end local v2           #sec:Ljava/lang/String;
    :cond_b
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-eqz v6, :cond_1b

    if-nez v0, :cond_1b

    .line 995
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 999
    :cond_c
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 1000
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1002
    :cond_d
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 1003
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1005
    :cond_e
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 1006
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1008
    :cond_f
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 1009
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1011
    :cond_10
    iget v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_11

    .line 1012
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1014
    :cond_11
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 1015
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1017
    :cond_12
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 1018
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1020
    :cond_13
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 1021
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1023
    :cond_14
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 1024
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1026
    :cond_15
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 1027
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1029
    :cond_16
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    if-eqz v5, :cond_17

    .line 1030
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1032
    :cond_17
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 1033
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1035
    :cond_18
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    if-eqz v5, :cond_19

    .line 1036
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1038
    :cond_19
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    if-eqz v5, :cond_1a

    .line 1039
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_1a
    move v5, v1

    .line 1042
    goto/16 :goto_0

    .line 996
    :cond_1b
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-nez v6, :cond_c

    goto/16 :goto_0
.end method

.method public setWifiStateChangeAllowed(Z)Z
    .locals 5
    .parameter "allow"

    .prologue
    .line 3273
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 3274
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowWifi"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 3278
    .local v1, ret:Z
    const-string v2, "WIFI_ALLOWED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 3280
    return v1
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadWifiManager()V

    .line 150
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    .line 151
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadEffectiveWifiNetworkSsidBlackWhitelist()Ljava/util/Map;

    .line 152
    return-void
.end method

.class public Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;
.super Ljava/lang/Object;
.source "WifiP2pStaticIpConfig.java"


# instance fields
.field public candidateStaticIp:I

.field public deviceAddress:Ljava/lang/String;

.field public isStaticIp:Z

.field public mThisDeviceStaticIp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    .line 43
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    .line 44
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    .line 45
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, sbuf:Ljava/lang/StringBuffer;
    const-string v1, "\n address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "\n candidateStaticIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->candidateStaticIp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "\n mThisDeviceStaticIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->mThisDeviceStaticIp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "\n isStaticIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pStaticIpConfig;->isStaticIp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

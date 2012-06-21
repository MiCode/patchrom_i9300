.class Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationNetworkStatsTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
    }
.end annotation


# instance fields
.field private final MOBILE:I

.field private final NONMOBILE:I

.field private connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private currentNetwork:Ljava/lang/String;

.field datausageHandler:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

.field networkDataUsageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field networkDataUsageMapTemp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private previousNetwork:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 682
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 672
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    .line 673
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Lcom/android/server/enterprise/ApplicationPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 674
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 675
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    .line 677
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->MOBILE:I

    .line 678
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->NONMOBILE:I

    .line 680
    iput-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 683
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V

    .line 684
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    return-void
.end method

.method private calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 957
    .local p1, updatedMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, previousMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    const/4 v6, 0x0

    .line 959
    .local v6, returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 988
    .end local p1           #updatedMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_0
    return-object p1

    .line 961
    .restart local p1       #updatedMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 962
    const/4 p1, 0x0

    goto :goto_0

    .line 963
    :cond_1
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 964
    .end local v6           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v7, returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 965
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 966
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 967
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 968
    .local v8, updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/NetworkStats;

    .line 969
    .local v5, previousNetworkStats:Landroid/app/enterprise/NetworkStats;
    new-instance v4, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v4}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 970
    .local v4, networkStats:Landroid/app/enterprise/NetworkStats;
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 972
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 974
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 976
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 978
    invoke-virtual {v7, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 985
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v5           #previousNetworkStats:Landroid/app/enterprise/NetworkStats;
    .end local v8           #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 986
    .end local v7           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v0, e:Ljava/lang/Exception;
    .restart local v6       #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :goto_3
    move-object p1, v6

    .line 988
    goto :goto_0

    .line 980
    .end local v6           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #key:Ljava/lang/Integer;
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7       #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_2
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 981
    .restart local v8       #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v7, v2, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v2           #key:Ljava/lang/Integer;
    .end local v8           #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    :cond_3
    move-object v6, v7

    .line 987
    .end local v7           #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v6       #returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    goto :goto_3

    .line 985
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    .local p1, mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, updatedMinusPrevious:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 894
    .local v9, returnMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 895
    .local v4, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 896
    .local v3, key:Ljava/lang/Integer;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 897
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/NetworkStats;

    .line 898
    .local v7, networkStatsFromDb:Landroid/app/enterprise/NetworkStats;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/NetworkStats;

    .line 899
    .local v10, updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    new-instance v6, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v6}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 900
    .local v6, networkStats:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 901
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 903
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 905
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 907
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 909
    invoke-virtual {v9, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/Integer;
    .end local v4           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v7           #networkStatsFromDb:Landroid/app/enterprise/NetworkStats;
    .end local v10           #updatedNetworkStats:Landroid/app/enterprise/NetworkStats;
    :catch_0
    move-exception v1

    .line 926
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 928
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v9

    .line 912
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Ljava/lang/Integer;
    .restart local v4       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 913
    .local v8, previousValue:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v9, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 917
    .end local v3           #key:Ljava/lang/Integer;
    .end local v8           #previousValue:Landroid/app/enterprise/NetworkStats;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 919
    .local v5, keySet1:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 920
    .restart local v3       #key:Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 921
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/NetworkStats;

    .line 922
    .local v11, updatedValue:Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v9, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getDataUsagesUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 812
    const/4 v2, 0x0

    .line 814
    .local v2, uid:[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "proc/uid_stat"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 821
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 687
    const-string v0, "Unknown"

    .line 689
    .local v0, stateString:Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/ApplicationPolicy$4;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 697
    const-string v0, "Unknown"

    .line 701
    :goto_0
    return-object v0

    .line 691
    :pswitch_0
    const-string v0, "Connected"

    .line 692
    goto :goto_0

    .line 694
    :pswitch_1
    const-string v0, "Disconnected"

    .line 695
    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAnyNetworkConnected()Z
    .locals 6

    .prologue
    .line 826
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 827
    .local v2, token1:J
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 829
    .local v1, conMan:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 830
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 831
    if-eqz v0, :cond_0

    .line 832
    const/4 v4, 0x1

    .line 833
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final isMobileNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "network"

    .prologue
    .line 705
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private registerNetworkChangeReceiver()V
    .locals 4

    .prologue
    .line 709
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerNetworkChangeReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 712
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 714
    .local v1, intentFilter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker$1;-><init>(Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    iput-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 743
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 744
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerNetworkChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDataUsageMap(I)V
    .locals 12
    .parameter "dataUsageForNetwork"

    .prologue
    const/4 v11, 0x1

    .line 765
    const-string v9, "ApplicationPolicy"

    const-string v10, "updateDataUsageMap"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagesUids()[Ljava/lang/String;

    move-result-object v8

    .line 768
    .local v8, uidList:[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 769
    array-length v9, v8

    if-lez v9, :cond_1

    .line 770
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v9, v8

    if-ge v1, v9, :cond_1

    .line 771
    aget-object v9, v8, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 772
    .local v7, uid:I
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    .line 773
    .local v5, totalUsageTxPkg:J
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    .line 775
    .local v3, totalUsageRxPkg:J
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 776
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/NetworkStats;

    .line 778
    .local v2, networkStats:Landroid/app/enterprise/NetworkStats;
    if-ne p1, v11, :cond_0

    .line 779
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long v9, v5, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 781
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long v9, v3, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 770
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 784
    :cond_0
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long v9, v5, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 786
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long v9, v3, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 806
    .end local v1           #i:I
    .end local v2           #networkStats:Landroid/app/enterprise/NetworkStats;
    .end local v3           #totalUsageRxPkg:J
    .end local v5           #totalUsageTxPkg:J
    .end local v7           #uid:I
    .end local v8           #uidList:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 809
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    return-void

    .line 790
    .restart local v1       #i:I
    .restart local v3       #totalUsageRxPkg:J
    .restart local v5       #totalUsageTxPkg:J
    .restart local v7       #uid:I
    .restart local v8       #uidList:[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v2}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 791
    .restart local v2       #networkStats:Landroid/app/enterprise/NetworkStats;
    iput v7, v2, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 792
    if-ne p1, v11, :cond_3

    .line 793
    iput-wide v5, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 794
    iput-wide v3, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 795
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 797
    :cond_3
    iput-wide v5, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 798
    iput-wide v3, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 799
    iget-object v9, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public getAppLevelDataUsage()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v4, retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/enterprise/NetworkStats;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagePerUid()Ljava/util/Hashtable;

    move-result-object v0

    .line 847
    .local v0, hashTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 849
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 850
    .local v2, key:Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 853
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    return-object v4
.end method

.method public getDataUsagePerUid()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 859
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 860
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    .line 865
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/NetworkDataUsageDb;

    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 866
    .local v0, appDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    const/4 v3, 0x0

    .line 868
    .local v3, mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/NetworkDataUsageDb;->getMobileDataUsage()Ljava/util/Hashtable;

    move-result-object v3

    .line 869
    if-eqz v3, :cond_4

    .line 870
    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 871
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_1
    return-object v4

    .line 862
    .end local v0           #appDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    .end local v3           #mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    goto :goto_0

    .line 873
    .restart local v0       #appDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    .restart local v3       #mapFromDb:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    .line 875
    .local v2, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v2, :cond_3

    .line 876
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 878
    goto :goto_1

    .line 880
    .end local v2           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 886
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public updateNetworkUsageDb()V
    .locals 4

    .prologue
    .line 937
    new-instance v1, Lcom/android/server/enterprise/NetworkDataUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 938
    .local v1, networkDb:Lcom/android/server/enterprise/NetworkDataUsageDb;
    invoke-direct {p0}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 939
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 940
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    .line 945
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 946
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 948
    .local v0, map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/NetworkDataUsageDb;->updateDataUsage(Ljava/util/Hashtable;)Z

    .line 951
    .end local v0           #map:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 952
    return-void

    .line 942
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    goto :goto_0
.end method

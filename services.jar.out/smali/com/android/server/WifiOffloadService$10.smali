.class Lcom/android/server/WifiOffloadService$10;
.super Ljava/lang/Object;
.source "WifiOffloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiOffloadService;->getDataUsageforUID(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1722
    iput-object p1, p0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iput-object p2, p0, Lcom/android/server/WifiOffloadService$10;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1725
    sget-object v22, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v22

    .line 1726
    const/4 v13, 0x0

    .line 1727
    .local v13, applicationInfo:Landroid/content/pm/ApplicationInfo;
    const/4 v4, -0x1

    .line 1728
    .local v4, uid:I
    const-wide/16 v18, 0x0

    .line 1729
    .local v18, totalDataUsage:J
    const/4 v12, 0x0

    .line 1730
    .local v12, appLaunchCount:I
    const/16 v21, 0x0

    .line 1732
    .local v21, uidOffloadFlag:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6, v7}, Lcom/android/server/WifiOffloadService;->access$1302(Lcom/android/server/WifiOffloadService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$1400(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$10;->val$packageName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1736
    iget v0, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1737
    .end local v4           #uid:I
    .local v20, uid:I
    :try_start_2
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "APP UID == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1740
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v2, v6, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v3, v6, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "data_usage"

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1741
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_7

    .line 1742
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor count == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 1744
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    move/from16 v0, v20

    #calls: Lcom/android/server/WifiOffloadService;->insertDataUsage(I)Z
    invoke-static {v6, v0}, Lcom/android/server/WifiOffloadService;->access$1500(Lcom/android/server/WifiOffloadService;I)Z

    .line 1746
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "WifiOffloadService"

    const-string v7, "App lauched for the first time, so dont offload but insert the UID to DB"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_2
    sget-object v6, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1748
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v4, v20

    .line 1838
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v20           #uid:I
    .restart local v4       #uid:I
    :goto_0
    return-void

    .line 1750
    .end local v4           #uid:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v20       #uid:I
    :cond_3
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_6

    .line 1752
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1753
    const-string v6, "launchcount"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1754
    const-string v6, "offload"

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1756
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launch count in DB: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_4
    const/4 v6, 0x1

    move/from16 v0, v21

    if-ne v0, v6, :cond_6

    .line 1759
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "WifiOffloadService"

    const-string v7, "OFFLOAD FLAG is set already for this app, so directly offload"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6, v7}, Lcom/android/server/WifiOffloadService;->access$1302(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1761
    sget-object v6, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1762
    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v4, v20

    .end local v20           #uid:I
    .restart local v4       #uid:I
    goto :goto_0

    .line 1768
    .end local v4           #uid:I
    .restart local v20       #uid:I
    :cond_6
    :try_start_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1776
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_7
    :goto_1
    :try_start_8
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LAUNCH COUNT  = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_8
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OFFLOAD FLAG for this UID == "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_9
    move/from16 v4, v20

    .line 1784
    .end local v20           #uid:I
    .restart local v4       #uid:I
    :goto_2
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->access$1600(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 1785
    .local v3, template:Landroid/net/NetworkTemplate;
    const-string v6, "netstats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    .line 1787
    .local v2, mStatsService:Landroid/net/INetworkStatsService;
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    .line 1788
    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V

    .line 1789
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsService;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 1791
    .local v5, history:Landroid/net/NetworkStatsHistory;
    if-eqz v5, :cond_c

    .line 1792
    const-wide/high16 v6, -0x8000

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v17

    .line 1794
    .local v17, entry:Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v17, :cond_c

    .line 1795
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received bytes  = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    :cond_a
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transferred bytes = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    :cond_b
    move-object/from16 v0, v17

    iget-wide v6, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v17

    iget-wide v9, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v18, v6, v9

    .line 1802
    .end local v17           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_c
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TotalDataUsage for this app = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    :cond_d
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launch count for this app  = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .end local v5           #history:Landroid/net/NetworkStatsHistory;
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    .line 1807
    const/high16 v6, 0x10

    const-string v7, "persist.offload.datausage.limit"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget v9, v9, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    mul-int v15, v6, v7

    .line 1808
    .local v15, dataUsageThreshold:I
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_f
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data Usage as per launch count = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-long v9, v12

    div-long v9, v18, v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_10
    int-to-long v6, v12

    div-long v6, v18, v6

    int-to-long v9, v15

    cmp-long v6, v6, v9

    if-ltz v6, :cond_13

    .line 1813
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "WifiOffloadService"

    const-string v7, "canAppOffload exceeds the threshold so Offload"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x1

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6, v7}, Lcom/android/server/WifiOffloadService;->access$1302(Lcom/android/server/WifiOffloadService;Z)Z

    .line 1817
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_12

    const-string v6, "WifiOffloadService"

    const-string v7, "Set the offload flag as 1  for this app"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #calls: Lcom/android/server/WifiOffloadService;->updateOffloadFlag(I)V
    invoke-static {v6, v4}, Lcom/android/server/WifiOffloadService;->access$1700(Lcom/android/server/WifiOffloadService;I)V

    .line 1821
    sget-object v6, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1822
    :try_start_a
    monitor-exit v22

    goto/16 :goto_0

    .line 1837
    .end local v2           #mStatsService:Landroid/net/INetworkStatsService;
    .end local v3           #template:Landroid/net/NetworkTemplate;
    .end local v15           #dataUsageThreshold:I
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v22
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v6

    .line 1772
    .end local v4           #uid:I
    .restart local v20       #uid:I
    :catch_0
    move-exception v16

    .line 1773
    .local v16, e:Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "WifiOffloadService"

    const-string v7, "Exception in getDataUsageforUID for dbHelper"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_1

    .line 1780
    .end local v16           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v16

    move/from16 v4, v20

    .end local v20           #uid:I
    .restart local v4       #uid:I
    .restart local v16       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_c
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ex in getting uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 1825
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v2       #mStatsService:Landroid/net/INetworkStatsService;
    .restart local v3       #template:Landroid/net/NetworkTemplate;
    .restart local v15       #dataUsageThreshold:I
    :cond_13
    :try_start_d
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1826
    .local v8, cv:Landroid/content/ContentValues;
    add-int/lit8 v12, v12, 0x1

    .line 1827
    const-string v6, "launchcount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v6, v6, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    iget-object v7, v7, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "data_usage"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 1831
    .end local v2           #mStatsService:Landroid/net/INetworkStatsService;
    .end local v3           #template:Landroid/net/NetworkTemplate;
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v15           #dataUsageThreshold:I
    :goto_5
    :try_start_e
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "WifiOffloadService"

    const-string v7, "notify here"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_14
    invoke-static {}, Lcom/android/server/WifiOffloadService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_15

    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canOffload ? "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v9}, Lcom/android/server/WifiOffloadService;->access$1300(Lcom/android/server/WifiOffloadService;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_15
    sget-object v6, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 1837
    monitor-exit v22

    goto/16 :goto_0

    .line 1829
    :catch_2
    move-exception v16

    .restart local v16       #e:Ljava/lang/Exception;
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ex in reading stats "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/WifiOffloadService$10;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v7, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->doOffload:Z
    invoke-static {v6, v7}, Lcom/android/server/WifiOffloadService;->access$1302(Lcom/android/server/WifiOffloadService;Z)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    .line 1837
    .end local v4           #uid:I
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v20       #uid:I
    :catchall_1
    move-exception v6

    move/from16 v4, v20

    .end local v20           #uid:I
    .restart local v4       #uid:I
    goto/16 :goto_3

    .line 1780
    :catch_3
    move-exception v16

    goto/16 :goto_4
.end method

.class Lcom/android/server/enterprise/EdmStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EdmStorageHelper.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "enterprise.db"

.field static final DATABASE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EdmStorageHelper"

.field static mInstance:Lcom/android/server/enterprise/EdmStorageHelper; = null

.field static final mTAG:Ljava/lang/String; = "EDM"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 93
    const-string v0, "enterprise.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 94
    iput-object p1, p0, Lcom/android/server/enterprise/EdmStorageHelper;->mContext:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public static createAppGeneralTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2830
    :try_start_0
    const-string v1, "CREATE TABLE APPLICATION_GENERAL( adminUid INTEGER PRIMARY KEY NOT NULL, installToSdCard NUMERIC DEFAULT 0,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2838
    const-string v1, "CREATE TRIGGER applicationGeneralPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_GENERAL FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2847
    :goto_0
    return-void

    .line 2844
    :catch_0
    move-exception v0

    .line 2845
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_GENERALcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createAppPermissionControlTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2776
    :try_start_0
    const-string v1, "CREATE TABLE APPLICATION_PERMISSIONCONTROL( adminUid INTEGER NOT NULL, permission TEXT NOT NULL, Object TEXT NOT NULL, ListType TEXT NOT NULL,  PRIMARY KEY (permission,Object,adminUid,ListType)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2788
    const-string v1, "CREATE TRIGGER APPLICATION_PERMISSIONCONTROL_FKIndex  BEFORE INSERT  ON APPLICATION_PERMISSIONCONTROL FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2800
    :goto_0
    return-void

    .line 2797
    :catch_0
    move-exception v0

    .line 2798
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "tblName"
    .parameter "db"

    .prologue
    .line 2872
    const-string v1, "EDM"

    const-string v2, "createBlackWhiteListPolicyTables...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ListType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT NOT NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PRIMARY KEY ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ListType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FOREIGN KEY ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") REFERENCES "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADMIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TRIGGER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_FKIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BEFORE INSERT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FOR EACH ROW BEGIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SELECT CASE WHEN ((SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADMIN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = new."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adminUid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " THEN RAISE (ABORT,\'Foreign Key Violation\') END;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  END;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2893
    :goto_0
    return-void

    .line 2890
    :catch_0
    move-exception v0

    .line 2891
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "creation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createKioskTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 2804
    :try_start_0
    const-string v1, "CREATE TABLE KIOSKMODE( adminUid INTEGER PRIMARY KEY NOT NULL, kioskModeEnabled NUMERIC DEFAULT 0, kioskModeDefaultPackage TEXT NULL , kioskModeKioskPackage TEXT NULL , systemBarEnabled NUMERIC DEFAULT 0, blockedHwKeyList TEXT NULL, taskManagerEnabled NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2817
    const-string v1, "CREATE TRIGGER kioskModeService_FKIndex  BEFORE INSERT  ON KIOSKMODE FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2826
    :goto_0
    return-void

    .line 2823
    :catch_0
    move-exception v0

    .line 2824
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createWifiSsidBlackWhiteListTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2851
    :try_start_0
    const-string v1, "CREATE TABLE WIFI_SSID_BLACK_WHITE_LIST ( adminUid INTEGER NOT NULL, WIFI_SSID TEXT NOT NULL, WIFI_LIST_TYPE TEXT NOT NULL, PRIMARY KEY (WIFI_SSID,adminUid,WIFI_LIST_TYPE) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2859
    const-string v1, "CREATE TRIGGER wifiSsidBlackWhiteListPolicy_FKIndex  BEFORE INSERT  ON WIFI_SSID_BLACK_WHITE_LIST FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END; END;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2868
    :goto_0
    return-void

    .line 2865
    :catch_0
    move-exception v0

    .line 2866
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_SSID_BLACK_WHITE_LISTcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/EdmStorageHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    const-class v1, Lcom/android/server/enterprise/EdmStorageHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/server/enterprise/EdmStorageHelper;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EdmStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;

    .line 86
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/EdmStorageHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .parameter "db"
    .parameter "table"

    .prologue
    .line 1714
    const/4 v1, 0x0

    .line 1715
    .local v1, exists:Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1717
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    const/4 v1, 0x1

    .line 1723
    :cond_0
    :goto_0
    return v1

    .line 1719
    :catch_0
    move-exception v0

    .line 1720
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final migrateFromV2ToV2_1(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 28
    .parameter "db"

    .prologue
    .line 1518
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Upgrading to 2 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v1, "APPLICATION_PERMISSION"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1520
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Already upgraded"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    :goto_0
    return-void

    .line 1526
    :cond_0
    :try_start_0
    const-string v1, "DROP TRIGGER IF EXISTS applicationPolicy_FKIndex;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1527
    const-string v1, "ALTER TABLE APPLICATION RENAME TO tmp_app_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1528
    const-string v1, "CREATE TABLE APPLICATION( packageName TEXT NOT NULL, adminUid INTEGER NOT NULL, applicationInstallationCount INTEGER UNSIGNED DEFAULT 0, applicationUninstallationCount INTEGER UNSIGNED DEFAULT 0, managedApp INTEGER UNSIGNED DEFAULT 0, install_sourceMDM INTEGER UNSIGNED DEFAULT 0, controlState INTEGER UNSIGNED DEFAULT 0,  PRIMARY KEY (packageName,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1542
    const-string v1, "CREATE TRIGGER applicationPolicy_FKIndex  BEFORE INSERT  ON APPLICATION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1553
    :goto_1
    :try_start_1
    const-string v1, "CREATE TABLE APPLICATION_PERMISSION( permission TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (permission,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1561
    const-string v1, "CREATE TRIGGER applicationPermissionPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_PERMISSION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1573
    :goto_2
    :try_start_2
    const-string v1, "CREATE TABLE APPLICATION_SIGNATURE( signature TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (signature,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1581
    const-string v1, "CREATE TRIGGER applicationSignaturePolicy_FKIndex  BEFORE INSERT  ON APPLICATION_SIGNATURE FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1592
    :goto_3
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1593
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading Application Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const-string v2, "tmp_app_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1596
    .local v10, c:Landroid/database/Cursor;
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1597
    const-string v1, "applicationState"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1598
    .local v14, disableState:I
    const-string v1, "applicationInstallState"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 1599
    .local v21, installState:I
    const-string v1, "applicationUnInstallState"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1600
    .local v27, uninstallState:I
    const-string v1, "adminUid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1601
    .local v9, admin:I
    const-string v1, "applicationName"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1602
    .local v24, pkgname:Ljava/lang/String;
    const-string v1, "managedApp"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1603
    .local v22, managedApp:I
    const-string v1, "install_sourceMDM"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 1604
    .local v20, installSource:I
    const-string v1, "applicationInstallationCount"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1605
    .local v18, installCount:I
    const-string v1, "applicationUninstallationCount"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 1607
    .local v26, uninstallCount:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1608
    .local v13, cv:Landroid/content/ContentValues;
    const-string v1, "packageName"

    move-object/from16 v0, v24

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string v1, "managedApp"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1611
    const-string v1, "install_sourceMDM"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1612
    const-string v1, "applicationInstallationCount"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1613
    const-string v1, "applicationUninstallationCount"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    const/4 v11, 0x0

    .line 1615
    .local v11, controlState:I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_1

    .line 1616
    or-int/lit8 v11, v11, 0x2

    .line 1618
    :cond_1
    const/4 v1, 0x1

    move/from16 v0, v27

    if-ne v0, v1, :cond_2

    .line 1619
    or-int/lit8 v11, v11, 0x1

    .line 1621
    :cond_2
    const/4 v1, 0x4

    move/from16 v0, v21

    if-ne v0, v1, :cond_4

    .line 1622
    or-int/lit8 v11, v11, 0x4

    .line 1625
    :cond_3
    :goto_5
    const-string v1, "controlState"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    const-string v1, "APPLICATION"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    .line 1708
    .end local v9           #admin:I
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #controlState:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #disableState:I
    .end local v18           #installCount:I
    .end local v20           #installSource:I
    .end local v21           #installState:I
    .end local v22           #managedApp:I
    .end local v24           #pkgname:Ljava/lang/String;
    .end local v26           #uninstallCount:I
    .end local v27           #uninstallState:I
    :catch_0
    move-exception v17

    .line 1709
    .local v17, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application policy upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1548
    .end local v17           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v17

    .line 1549
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1568
    .end local v17           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v17

    .line 1569
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application Permission table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1587
    .end local v17           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v17

    .line 1588
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application Signature table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1623
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v9       #admin:I
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #controlState:I
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v14       #disableState:I
    .restart local v18       #installCount:I
    .restart local v20       #installSource:I
    .restart local v21       #installState:I
    .restart local v22       #managedApp:I
    .restart local v24       #pkgname:Ljava/lang/String;
    .restart local v26       #uninstallCount:I
    .restart local v27       #uninstallState:I
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    .line 1624
    or-int/lit8 v11, v11, 0x8

    goto/16 :goto_5

    .line 1628
    .end local v9           #admin:I
    .end local v11           #controlState:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #disableState:I
    .end local v18           #installCount:I
    .end local v20           #installSource:I
    .end local v21           #installState:I
    .end local v22           #managedApp:I
    .end local v24           #pkgname:Ljava/lang/String;
    .end local v26           #uninstallCount:I
    .end local v27           #uninstallState:I
    :cond_5
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1629
    const-string v1, "DROP TABLE tmp_app_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1631
    const/4 v15, 0x0

    .line 1632
    .local v15, dmappmgrDB:Landroid/database/sqlite/SQLiteDatabase;
    const-string v16, "dmappmgr.db"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1634
    .local v16, dmappmgrDBPath:Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EdmStorageHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v15

    .line 1639
    :goto_6
    :try_start_6
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1643
    const-string v1, "EMDMAppSignatureBlackList"

    invoke-static {v15, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1644
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading Signature Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    const-string v1, "SELECT * FROM EMDMAppSignatureBlackList"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1648
    .local v12, cr:Landroid/database/Cursor;
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1649
    const-string v1, "app_signature"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1650
    .local v25, signature:Ljava/lang/String;
    const-string v1, "admin"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1651
    .restart local v9       #admin:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1652
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v1, "signature"

    move-object/from16 v0, v25

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    const-string v1, "APPLICATION_SIGNATURE"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_7

    .line 1636
    .end local v9           #admin:I
    .end local v12           #cr:Landroid/database/Cursor;
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v25           #signature:Ljava/lang/String;
    :catch_4
    move-exception v17

    .line 1637
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application table upgrade EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1656
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v12       #cr:Landroid/database/Cursor;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1657
    const-string v1, "DROP TABLE EMDMAppSignatureBlackList;"

    invoke-virtual {v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    .end local v12           #cr:Landroid/database/Cursor;
    :cond_7
    const-string v1, "EMDMAppPermissionsBlackList"

    invoke-static {v15, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1665
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading Permission Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string v1, "SELECT * FROM EMDMAppPermissionsBlackList"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1669
    .restart local v12       #cr:Landroid/database/Cursor;
    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1670
    const-string v1, "app_permission"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1671
    .local v23, permission:Ljava/lang/String;
    const-string v1, "admin"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1672
    .restart local v9       #admin:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1673
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v1, "permission"

    move-object/from16 v0, v23

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v1, "APPLICATION_PERMISSION"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_8

    .line 1677
    .end local v9           #admin:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v23           #permission:Ljava/lang/String;
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1678
    const-string v1, "DROP TABLE EMDMAppPermissionsBlackList;"

    invoke-virtual {v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1683
    .end local v12           #cr:Landroid/database/Cursor;
    :cond_9
    const-string v1, "EDMAppInstallationMode"

    invoke-static {v15, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1684
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading InstallMode Table"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v1, "SELECT * FROM EDMAppInstallationMode"

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1687
    .restart local v12       #cr:Landroid/database/Cursor;
    :cond_a
    :goto_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1688
    const-string v1, "installatioMode"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1689
    .local v19, installMode:I
    if-nez v19, :cond_a

    .line 1690
    const-string v1, "admin"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1691
    .restart local v9       #admin:I
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1692
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v1, "packageName"

    const-string v2, ".*"

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v1, "controlState"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1696
    const-string v1, "APPLICATION"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_9

    .line 1699
    .end local v9           #admin:I
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v19           #installMode:I
    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1700
    const-string v1, "DROP TABLE EDMAppInstallationMode;"

    invoke-virtual {v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1702
    .end local v12           #cr:Landroid/database/Cursor;
    :cond_c
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1703
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1704
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1705
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1706
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1707
    const-string v1, "EdmStorageHelper"

    const-string v2, "Successful upgrade to 2.1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method private final migrateFromV2_1ToV2_2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16
    .parameter "db"

    .prologue
    .line 1430
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Upgrading to 2.2 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-string v1, "VPN"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1433
    const-string v1, "ALTER TABLE VPN RENAME TO tmp_vpn_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1436
    :try_start_0
    const-string v1, "CREATE TABLE VPN( adminUid INTEGER NOT NULL, VpnID NUMERIC PRIMARY KEY NOT NULL, UsrName TEXT NULL, UsrPwd TEXT NULL,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1448
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1449
    const-string v1, "EdmStorageHelper"

    const-string v2, "Upgrading VPN Table to ICS version"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const-string v2, "tmp_vpn_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1452
    .local v10, cursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    const-string v1, "adminUid"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1454
    .local v9, adminUid:I
    const-string v1, "VpnID"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1455
    .local v13, vpnId:I
    const-string v1, "UsrName"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1457
    .local v15, vpnUserName:Ljava/lang/String;
    const-string v1, "UsrPwd"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1459
    .local v14, vpnPassword:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1460
    .local v11, cv:Landroid/content/ContentValues;
    const-string v1, "adminUid"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v1, "VpnID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    const-string v1, "UsrName"

    invoke-virtual {v11, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    const-string v1, "UsrPwd"

    invoke-virtual {v11, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v1, "VPN"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 1466
    .end local v9           #adminUid:I
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v13           #vpnId:I
    .end local v14           #vpnPassword:Ljava/lang/String;
    .end local v15           #vpnUserName:Ljava/lang/String;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1467
    const-string v1, "DROP TABLE tmp_vpn_table;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1468
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1469
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1474
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppGeneralTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1475
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createWifiSsidBlackWhiteListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1476
    const-string v1, "BLUETOOTH_DEVICE_BWLIST"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1477
    const-string v1, "BLUETOOTH_PROFILE_BWLIST"

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1482
    :try_start_1
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN nativeVpnAllowed NUMERIC DEFAULT 1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1487
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN passwordMaximumNumericSequenceLength NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1489
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN passwordForbiddenStrings TEXT NULL;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1491
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN passwordMaximumCharacterOccurences NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1495
    const-string v1, "ALTER TABLE WIFI ADD COLUMN allowWifiApSettingModification NUMERIC DEFAULT 1;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1499
    const-string v1, "ALTER TABLE WIFI ADD COLUMN wifiSsidRestriction NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1504
    const-string v1, "ALTER TABLE BLUETOOTH ADD COLUMN profilePolicyEnabled NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1507
    const-string v1, "ALTER TABLE BLUETOOTH ADD COLUMN devicePolicyEnabled NUMERIC DEFAULT 0;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1511
    const-string v1, "EdmStorageHelper"

    const-string v2, "Successful upgrade to 2.2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1515
    :goto_2
    return-void

    .line 1512
    :catch_0
    move-exception v12

    .line 1513
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding colums for 2.2 upgrade EX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1444
    .end local v12           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private final migrateFromV2_2ToV3_0(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 1160
    const-string v1, "EdmStorageHelper"

    const-string v2, "onUpgrade : Upgrading to 3.0 "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createKioskTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1164
    const-string v1, "WIFI_CONF"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1166
    :try_start_0
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticIpEnabled NUMERIC DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1170
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticIp TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1173
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticGateway TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1176
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticPrimaryDns TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1179
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticSecondaryDns TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1182
    const-string v1, "ALTER TABLE WIFI_CONF ADD COLUMN networkStaticSubnetMask TEXT NULL; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1186
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 1194
    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN wallpaperEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1198
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN statusBarExpansionEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1202
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN powerOffAllowed NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1206
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN OTAUpgradeEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1210
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN DateTimeEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1214
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN googleCrashReportEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1218
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN sdCardWriteEnabled NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1225
    const-string v1, "ALTER TABLE RESTRICTION ADD COLUMN MarketNetworkType NUMERIC DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 1235
    :goto_1
    :try_start_2
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowIncomingSms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1239
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowOutgoingSms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1243
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowIncomingMms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1247
    const-string v1, "ALTER TABLE PHONERESTRICTION ADD COLUMN allowOutgoingMms NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 1257
    :goto_2
    :try_start_3
    const-string v1, "ALTER TABLE BLUETOOTH ADD COLUMN bluetoothLogEnabled NUMERIC DEFAULT 0; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 1267
    :goto_3
    :try_start_4
    const-string v1, "ALTER TABLE PASSWORD ADD COLUMN screenLockPatternVisibility NUMERIC DEFAULT 1; "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 1277
    :goto_4
    :try_start_5
    const-string v1, "ALTER TABLE ROAMING ADD COLUMN roamingVoiceCallsEnabled NUMERIC DEFAULT 1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1287
    :goto_5
    :try_start_6
    const-string v1, "CREATE TABLE APPLICATION_MISC( adminUid INTEGER PRIMARY KEY NOT NULL, widgetWhitelistEnabled NUMERIC DEFAULT 0, appNotificationMode NUMERIC DEFAULT 2,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1297
    const-string v1, "CREATE TRIGGER applicationMiscPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_MISC FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1309
    :goto_6
    :try_start_7
    const-string v1, "CREATE TABLE WebFilterTable (adminUid TEXT, url TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1315
    const-string v1, "CREATE TRIGGER webFilterPolicy_FKIndex  BEFORE INSERT  ON WebFilterTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1329
    :goto_7
    :try_start_8
    const-string v1, "CREATE TABLE WebFilterLogTable (url TEXT, time TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1334
    const-string v1, "CREATE TRIGGER webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1353
    :goto_8
    :try_start_9
    const-string v1, "CREATE TABLE WebFilterSettingsTable (adminUid TEXT, logging TEXT DEFAULT \'false\', filtering TEXT DEFAULT \'false\', id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1360
    const-string v1, "CREATE TRIGGER webFilterSettingsPolicy_FKIndex  BEFORE INSERT  ON WebFilterSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1374
    :goto_9
    :try_start_a
    const-string v1, "CREATE TABLE BluetoothLogTable (time TEXT, log TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1379
    const-string v1, "CREATE TRIGGER bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1397
    :goto_a
    :try_start_b
    const-string v1, "CREATE TABLE EmailSettingsTable (adminUid INTEGER NOT NULL, EmailAddress TEXT NOT NULL, EmailReqSigSmime NUMERIC DEFAULT 0, EmailReqEncryptSmime NUMERIC DEFAULT 0, EmailSigningCertName TEXT NULL, EmailEncryptCertName TEXT NULL, EmailAllowForward NUMERIC DEFAULT 1,  PRIMARY KEY (EmailAddress,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    const-string v1, "CREATE TRIGGER emailPolicy_FKIndex  BEFORE INSERT  ON EmailSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1426
    :goto_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppPermissionControlTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1427
    return-void

    .line 1303
    :catch_0
    move-exception v0

    .line 1304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1323
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1324
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1347
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1348
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 1368
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1369
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 1392
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 1393
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 1421
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1422
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 1281
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    goto :goto_5

    .line 1271
    :catch_7
    move-exception v1

    goto :goto_4

    .line 1261
    :catch_8
    move-exception v1

    goto :goto_3

    .line 1251
    :catch_9
    move-exception v1

    goto :goto_2

    .line 1229
    :catch_a
    move-exception v1

    goto/16 :goto_1

    .line 1187
    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method addAdmin(ILjava/lang/String;Z)Z
    .locals 8
    .parameter "iUId"
    .parameter "sName"
    .parameter "bCanRemove"

    .prologue
    .line 2319
    const/4 v3, 0x0

    .line 2321
    .local v3, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2322
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2323
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2324
    const-string v4, "adminName"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    const-string v4, "canRemove"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2327
    const-string v4, "ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2328
    const/4 v3, 0x1

    .line 2332
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2336
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_1
    return v3

    .line 2330
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2333
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v2

    .line 2334
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "EdmStorageHelper"

    const-string v5, "Failed on addAdmin"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"

    .prologue
    const/4 v9, 0x0

    .line 2550
    const/4 v8, 0x0

    .line 2551
    .local v8, where:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2552
    .local v1, buf:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 2553
    :cond_0
    const/4 p3, 0x0

    .line 2561
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2563
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4, p1, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 2564
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2565
    const/4 v9, 0x1

    .line 2570
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :goto_1
    return v9

    .line 2555
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2556
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .local v2, buf:Ljava/lang/StringBuffer;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_3

    aget-object v3, v0, v6

    .line 2557
    .local v3, column:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2556
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2559
    .end local v3           #column:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v1, v2

    .end local v2           #buf:Ljava/lang/StringBuffer;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 2567
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v5

    .line 2568
    .local v5, e:Ljava/lang/Exception;
    :goto_3
    const-string v10, "EdmStorageHelper"

    const-string v11, "could not execute deleteDataByFields"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2567
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #buf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2           #buf:Ljava/lang/StringBuffer;
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    goto :goto_3
.end method

.method declared-synchronized getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "sTableName"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    .line 2103
    monitor-enter p0

    const/4 v11, -0x1

    .line 2104
    .local v11, result:I
    const/4 v9, 0x0

    .line 2106
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2107
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v1

    .line 2110
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2111
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 2114
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2115
    if-eqz v9, :cond_0

    .line 2116
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2117
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 2123
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 2124
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2126
    :cond_1
    monitor-exit p0

    return v11

    .line 2120
    :catch_0
    move-exception v10

    .line 2121
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_2
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on getAdminByField"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2103
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "columns"

    .prologue
    .line 2245
    monitor-enter p0

    const/4 v9, 0x0

    .line 2247
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2248
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? "

    .line 2249
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 2250
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2258
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 2251
    :catch_0
    move-exception v10

    .line 2252
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v2, "EdmStorageHelper"

    const-string v5, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2253
    if-eqz v9, :cond_0

    .line 2254
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2255
    const/4 v9, 0x0

    goto :goto_0

    .line 2245
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "columns"

    .prologue
    .line 2223
    monitor-enter p0

    const/4 v9, 0x0

    .line 2225
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2226
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminUid=? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2227
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    aput-object p4, v4, v1

    .line 2228
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2236
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 2229
    :catch_0
    move-exception v10

    .line 2230
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v2, "EdmStorageHelper"

    const-string v5, "Failed on getCursorByAdminAndField"

    invoke-static {v1, v2, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2231
    if-eqz v9, :cond_0

    .line 2232
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2233
    const/4 v9, 0x0

    goto :goto_0

    .line 2223
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "ReturnColumns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2434
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2435
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    .local v16, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v14, 0x0

    .line 2437
    .local v14, count:I
    const/4 v5, 0x0

    .line 2438
    .local v5, where:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2439
    .local v11, buf:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 2442
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2443
    :cond_0
    const/16 p3, 0x0

    .line 2452
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v6, p3

    :try_start_0
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 2453
    if-eqz v15, :cond_6

    .line 2454
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2455
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2456
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 2457
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 2445
    .end local v18           #i:I
    :cond_1
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2446
    .end local v11           #buf:Ljava/lang/StringBuffer;
    .local v12, buf:Ljava/lang/StringBuffer;
    move-object/from16 v10, p2

    .local v10, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v0, v10

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v13, v10, v19

    .line 2447
    .local v13, column:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2446
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 2449
    .end local v13           #column:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    const-string v4, " AND "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 2459
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #len$:I
    .restart local v18       #i:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2462
    .end local v18           #i:I
    :catch_0
    move-exception v17

    .line 2463
    .local v17, e:Ljava/lang/Exception;
    :goto_4
    :try_start_2
    const-string v3, "EdmStorageHelper"

    const-string v4, "could not execute getDataByFields"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2465
    if-eqz v15, :cond_4

    .line 2466
    .end local v17           #e:Ljava/lang/Exception;
    :goto_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2469
    :cond_4
    return-object v16

    .line 2465
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v15, :cond_5

    .line 2466
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2465
    :cond_5
    throw v3

    :cond_6
    if-eqz v15, :cond_4

    goto :goto_5

    .end local v11           #buf:Ljava/lang/StringBuffer;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #buf:Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v3

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_6

    .line 2462
    .end local v11           #buf:Ljava/lang/StringBuffer;
    .restart local v12       #buf:Ljava/lang/StringBuffer;
    :catch_1
    move-exception v17

    move-object v11, v12

    .end local v12           #buf:Ljava/lang/StringBuffer;
    .restart local v11       #buf:Ljava/lang/StringBuffer;
    goto :goto_4
.end method

.method declared-synchronized getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 2162
    monitor-enter p0

    const/4 v12, -0x1

    .line 2163
    .local v12, result:I
    const/4 v10, 0x0

    .line 2165
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2166
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v3, v2

    .line 2167
    .local v3, columns:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "=? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2168
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p4, v5, v2

    .line 2169
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2171
    if-eqz v10, :cond_1

    .line 2172
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2173
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2175
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v13, v12

    .line 2185
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #columns:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    .end local v12           #result:I
    .local v13, result:I
    :goto_0
    monitor-exit p0

    return v13

    .line 2178
    .end local v13           #result:I
    .restart local v12       #result:I
    :catch_0
    move-exception v11

    .line 2179
    .local v11, e:Ljava/lang/Exception;
    const/4 v2, 0x6

    :try_start_1
    const-string v6, "EdmStorageHelper"

    const-string v7, "Failed on getIntByAdminAndField"

    invoke-static {v2, v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2180
    if-eqz v10, :cond_2

    .line 2181
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2182
    const/4 v10, 0x0

    :cond_2
    move v13, v12

    .line 2185
    .end local v12           #result:I
    .restart local v13       #result:I
    goto :goto_0

    .line 2162
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #result:I
    .restart local v12       #result:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 2190
    monitor-enter p0

    const/4 v11, 0x0

    .line 2191
    .local v11, result:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2194
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2195
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v2, v1

    .line 2196
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2197
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p4, v4, v1

    .line 2198
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2200
    if-eqz v9, :cond_1

    .line 2201
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2202
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2204
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v11

    .line 2206
    :catch_0
    move-exception v10

    .line 2207
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on getValueByAdminAndField"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2208
    if-eqz v9, :cond_1

    .line 2209
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2210
    const/4 v9, 0x0

    goto :goto_0

    .line 2190
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getValueByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "retColumn"

    .prologue
    .line 2139
    monitor-enter p0

    const/4 v9, 0x0

    .line 2141
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2142
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p5, v2, v1

    .line 2145
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2146
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p4, v4, v1

    .line 2149
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2157
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 2150
    :catch_0
    move-exception v10

    .line 2151
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    :try_start_1
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on getValueByAdminAndField"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 2152
    if-eqz v9, :cond_0

    .line 2153
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2154
    const/4 v9, 0x0

    goto :goto_0

    .line 2139
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 11
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "columns"

    .prologue
    const/4 v5, 0x0

    .line 1944
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1945
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1946
    .local v9, cv:Landroid/content/ContentValues;
    const-string v3, "adminUid=? "

    .line 1947
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    .local v4, whereArgs:[Ljava/lang/String;
    move-object v1, p1

    move-object v2, p3

    move-object v6, v5

    move-object v7, v5

    .line 1950
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1951
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1952
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1953
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 1954
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1957
    .end local v10           #i:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1959
    :cond_1
    return-object v9
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "sTableName"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1969
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 1970
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1971
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    .line 1972
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1973
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1975
    :cond_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1976
    .local v9, cv:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 1977
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1979
    :cond_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1980
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1984
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v11           #i:I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1986
    :cond_4
    return-object v10
.end method

.method getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 18
    .parameter "sTableName"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1996
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1997
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2000
    .local v11, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez p3, :cond_1

    .line 2001
    const/4 v11, 0x0

    .line 2039
    .end local v11           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_0
    :goto_0
    return-object v11

    .line 2003
    .restart local v11       #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 2004
    .local v5, whereArgs:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2005
    .local v17, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v16

    .line 2006
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    .line 2008
    .local v14, index:I
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 2010
    .local v15, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v17, :cond_2

    .line 2011
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2012
    .restart local v17       #where:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    :goto_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v14

    .line 2017
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2014
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2020
    .end local v15           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v17, :cond_0

    .line 2021
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2023
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2024
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2025
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 2027
    :cond_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2028
    .local v10, cv:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 2029
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2031
    :cond_5
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2032
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2036
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #i:I
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method getValuesListBiggerThan(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    .locals 18
    .parameter "sTableName"
    .parameter "columns"
    .parameter "cvValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2050
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2051
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2054
    .local v11, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-nez p3, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-object v11

    .line 2057
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 2058
    .local v5, whereArgs:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2059
    .local v17, where:Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v16

    .line 2060
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    .line 2062
    .local v14, index:I
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 2064
    .local v15, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v17, :cond_2

    .line 2065
    new-instance v17, Ljava/lang/StringBuilder;

    .end local v17           #where:Ljava/lang/StringBuilder;
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2066
    .restart local v17       #where:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    :goto_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v14

    .line 2071
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2068
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2074
    .end local v15           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v17, :cond_0

    .line 2075
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2077
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2078
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2079
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 2081
    :cond_4
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2082
    .local v10, cv:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 2083
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2085
    :cond_5
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 2086
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2090
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v12           #i:I
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method insertData(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "sTableName"
    .parameter "cv"

    .prologue
    .line 2621
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2622
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2623
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2624
    const/4 v1, 0x1

    .line 2626
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method insertOrUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "sColumn"
    .parameter "sValue"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1734
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1735
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1737
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1740
    const-string v2, "adminUid=? "

    .line 1741
    .local v2, where:Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p2, v3, v5

    .line 1744
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 1745
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1765
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :goto_0
    return v4

    .line 1750
    :cond_0
    invoke-virtual {v1, p1, v0, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    .line 1751
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1757
    :cond_1
    const-string v6, "0"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1758
    const-string v6, "adminUid"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    :cond_2
    invoke-virtual {v1, p1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 1762
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_3
    move v4, v5

    .line 1765
    goto :goto_0
.end method

.method insertOrUpdateGenericTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "Name"
    .parameter "Value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2369
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2370
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2371
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name=? "

    .line 2372
    .local v2, where:Ljava/lang/String;
    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    .line 2375
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v6, "value"

    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    const-string v6, "generic"

    invoke-virtual {v1, v6, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 2377
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2385
    :goto_0
    return v4

    .line 2380
    :cond_0
    const-string v6, "name"

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const-string v6, "generic"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 2382
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 2385
    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 111
    const-string v1, "EDM"

    const-string v2, "onCreate.... do database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :try_start_0
    const-string v1, "CREATE TABLE ADMIN ( adminUid INTEGER PRIMARY KEY NOT NULL, adminName TEXT NOT NULL, canRemove NUMERIC NOT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    const-string v1, "CREATE TABLE APPLICATION( packageName TEXT NOT NULL, adminUid INTEGER NOT NULL, applicationInstallationCount INTEGER UNSIGNED DEFAULT 0, applicationUninstallationCount INTEGER UNSIGNED DEFAULT 0, managedApp INTEGER UNSIGNED DEFAULT 0, install_sourceMDM INTEGER UNSIGNED DEFAULT 0, controlState INTEGER UNSIGNED DEFAULT 0,  PRIMARY KEY (packageName,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    const-string v1, "CREATE TRIGGER applicationPolicy_FKIndex  BEFORE INSERT  ON APPLICATION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_0
    :try_start_2
    const-string v1, "CREATE TABLE APPLICATION_PERMISSION( permission TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (permission,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v1, "CREATE TRIGGER applicationPermissionPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_PERMISSION FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    :goto_1
    :try_start_3
    const-string v1, "CREATE TABLE APPLICATION_SIGNATURE( signature TEXT NOT NULL, adminUid INTEGER NOT NULL,  PRIMARY KEY (signature,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v1, "CREATE TRIGGER applicationSignaturePolicy_FKIndex  BEFORE INSERT  ON APPLICATION_SIGNATURE FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 182
    :goto_2
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppGeneralTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    :try_start_4
    const-string v1, "CREATE TABLE APPLICATION_MISC( adminUid INTEGER PRIMARY KEY NOT NULL, widgetWhitelistEnabled NUMERIC DEFAULT 0, appNotificationMode NUMERIC DEFAULT 2,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string v1, "CREATE TRIGGER applicationMiscPolicy_FKIndex  BEFORE INSERT  ON APPLICATION_MISC FOR EACH ROW BEGIN SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 211
    :goto_3
    :try_start_5
    const-string v1, "CREATE TABLE EAS ( adminUid INTEGER PRIMARY KEY NOT NULL, passwordRecoverable NUMERIC DEFAULT 0, easPasswordExpires INTEGER UNSIGNED DEFAULT 0, passwordHistory INTEGER UNSIGNED DEFAULT 0, attachmentsEnabled NUMERIC DEFAULT 1, maxAttachmentSize INTEGER UNSIGNED DEFAULT 0, allowStorageCard NUMERIC DEFAULT 0, allowBrowser NUMERIC DEFAULT 1, allowTextMessaging NUMERIC DEFAULT 1, allowPOPIMAPEmail NUMERIC DEFAULT 1, allowHTMLEmail NUMERIC DEFAULT 1, requireManualSyncRoaming NUMERIC DEFAULT 1, minPasswordComplexChars INTEGER UNSIGNED DEFAULT 0, maxCalendarAge INTEGER UNSIGNED DEFAULT 7, maxEmailAge INTEGER UNSIGNED DEFAULT 3, maxEmailBodyTruncSize INTEGER UNSIGNED DEFAULT 3, maxHtmlEmailBodyTruncSize INTEGER UNSIGNED DEFAULT 3, requireSignedSMIMEMessages NUMERIC DEFAULT 1, requireEncryptedSMIMEMessages NUMERIC DEFAULT 0, requireSignedSMIMEAlgorithm NUMERIC DEFAULT 0, requireEncryptionSMIMEAlgorithm NUMERIC DEFAULT 0, allowSMIMEEncryptionAlgorithmNegotiation NUMERIC DEFAULT 1, allowSMIMESoftCerts NUMERIC DEFAULT 1, allowDesktopSync NUMERIC DEFAULT 1, allowIrDA NUMERIC DEFAULT 1, requireDeviceEncryption NUMERIC DEFAULT 0, requireStorageCardEncryption NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const-string v1, "CREATE TRIGGER EAS_FKIndex  BEFORE INSERT  ON EAS FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 334
    :goto_4
    :try_start_6
    const-string v1, "CREATE TABLE LOCATION( adminUid INTEGER PRIMARY KEY NOT NULL, blockedProviders TEXT NULL, forceProviders NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    const-string v1, "CREATE TRIGGER locationPolicy_FKIndex  BEFORE INSERT  ON LOCATION FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 360
    :goto_5
    :try_start_7
    const-string v1, "CREATE TABLE RESTRICTION( adminUid INTEGER PRIMARY KEY NOT NULL, usbTetheringEnabled NUMERIC DEFAULT 1, wifiTetheringEnabled NUMERIC DEFAULT 1, bluetoothTetheringEnabled NUMERIC DEFAULT 1, nfcEnabled NUMERIC DEFAULT 1, factoryresetallowed NUMERIC DEFAULT 1, homeKeyEnabled NUMERIC DEFAULT 1, microphoneEnabled NUMERIC DEFAULT 1, cameraEnabled NUMERIC DEFAULT 1, usbDebuggingEnabled NUMERIC DEFAULT 1, screenCaptureEnabled NUMERIC DEFAULT 1, massStorageEnabled NUMERIC DEFAULT 1, mockLocationEnabled NUMERIC DEFAULT 1, backupEnabled NUMERIC DEFAULT 1, cellularDataEnabled NUMERIC DEFAULT 1, allowSettingsChanges NUMERIC DEFAULT 1, sdCardEnabled NUMERIC DEFAULT 1, clipboardEnabled NUMERIC DEFAULT 1, usbKiesEnabled NUMERIC DEFAULT 1, usbMediaPlayerEnabled NUMERIC DEFAULT 1, allowNonMarketApp NUMERIC DEFAULT 1, wallpaperEnabled NUMERIC DEFAULT 1, statusBarExpansionEnabled NUMERIC DEFAULT 1, powerOffAllowed NUMERIC DEFAULT 1, MarketNetworkType NUMERIC DEFAULT 0, backgroundDataEnabled NUMERIC DEFAULT 1, nativeVpnAllowed NUMERIC DEFAULT 1, OTAUpgradeEnabled NUMERIC DEFAULT 1, DateTimeEnabled NUMERIC DEFAULT 1, googleCrashReportEnabled NUMERIC DEFAULT 1, sdCardWriteEnabled NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const-string v1, "CREATE TRIGGER restrictionPolicy_FKIndex  BEFORE INSERT  ON RESTRICTION FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 468
    :goto_6
    :try_start_8
    const-string v1, "CREATE TABLE PASSWORD( adminUid INTEGER PRIMARY KEY NOT NULL, unlockDelay NUMERIC DEFAULT -1, passwordChangeTimeout NUMERIC DEFAULT -1, passwordAttemptDeviceDisable NUMERIC DEFAULT 0, passwordMaximumNumericSequenceLength NUMERIC DEFAULT 0, passwordForbiddenStrings TEXT NULL, passwordMaximumCharacterOccurences NUMERIC DEFAULT 0, passwordRequiredPattern TEXT NULL, screenLockPatternVisibility NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    const-string v1, "CREATE TRIGGER passwordPolicy_FKIndex  BEFORE INSERT  ON PASSWORD FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 500
    :goto_7
    :try_start_9
    const-string v1, "CREATE TABLE MISC( adminUid INTEGER PRIMARY KEY NOT NULL, CallingLogEnabled NUMERIC DEFAULT 0, smsLogEnabled NUMERIC DEFAULT 0, enableWifiDataStatistic NUMERIC DEFAULT 0, miscDataStatisticTimer INTEGER DEFAULT 3, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 512
    const-string v1, "CREATE TRIGGER miscPolicy_FKIndex  BEFORE INSERT  ON MISC FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 529
    :goto_8
    :try_start_a
    const-string v1, "CREATE TABLE SMS( smsType NUMERIC DEFAULT -1, smsTimeStamp TEXT NULL , smsAddress TEXT NULL , smsBody TEXT NULL );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 538
    :goto_9
    :try_start_b
    const-string v1, "CREATE TABLE ROAMING( adminUid INTEGER PRIMARY KEY NOT NULL, roamingSyncEnabled NUMERIC DEFAULT 1, roamingPushEnabled NUMERIC DEFAULT 1, roamingDataEnabled NUMERIC DEFAULT 1, roamingVoiceCallsEnabled NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 552
    const-string v1, "CREATE TRIGGER RoamingPolicy_FKIndex BEFORE INSERT  ON ROAMING FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 571
    :goto_a
    :try_start_c
    const-string v1, "CREATE TABLE VPN( adminUid INTEGER NOT NULL, VpnID NUMERIC PRIMARY KEY NOT NULL, UsrName TEXT NULL, UsrPwd TEXT NULL,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    const-string v1, "CREATE TRIGGER VpnPolicy_FKIndex  BEFORE INSERT  ON VPN FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 590
    :goto_b
    :try_start_d
    const-string v1, "CREATE TABLE WIFI ( adminUid INTEGER PRIMARY KEY NOT NULL, blockedSSIDList TEXT NULL, allowUserChanges NUMERIC DEFAULT 1, passwordHidden NUMERIC DEFAULT 0, promptCredentials NUMERIC DEFAULT 1, minimumRequiredSecurity NUMERIC DEFAULT 0, allowWifi NUMERIC DEFAULT 1, allowUserProfiles NUMERIC DEFAULT 1, allowWifiApSettingModification NUMERIC DEFAULT 1, wifiSsidRestriction NUMERIC DEFAULT 0, tlsCertificateSecurityLevel NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 614
    const-string v1, "CREATE TRIGGER wifiPolicy_FKIndex  BEFORE INSERT  ON WIFI FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 624
    :goto_c
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createWifiSsidBlackWhiteListTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 626
    :try_start_e
    const-string v1, "CREATE TABLE WIFI_CONF( adminUid INTEGER NOT NULL, networkSSID TEXT PRIMARY KEY NOT NULL, networkBSSID TEXT NULL, networkKeyMgmt TEXT NULL, networkAuthAlg TEXT NULL, networkAllowedProtos TEXT NULL, networkAllowedPairwiseCiphers TEXT NULL, networkAllowedGroupProtocols TEXT NULL, networkWEPKeyId NUMERIC DEFAULT 0, networkWEPKey1 TEXT NULL, networkWEPKey2 TEXT NULL, networkWEPKey3 TEXT NULL, networkWEPKey4 TEXT NULL, networkPSK TEXT NULL, networkEAP TEXT NULL, networkPhase1 TEXT NULL, networkPhase2 TEXT NULL, networkPacFile TEXT NULL, networkIdentity TEXT NULL, networkAnonymousId TEXT NULL, networkPassword TEXT NULL, networkClientCertification TEXT NULL, networkPrivateKey TEXT NULL, networkCaCertificate TEXT NULL, networkStaticIpEnabled NUMERIC DEFAULT 0, networkStaticIp TEXT NULL, networkStaticGateway TEXT NULL, networkStaticPrimaryDns TEXT NULL, networkStaticSecondaryDns TEXT NULL, networkStaticSubnetMask TEXT NULL,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 698
    const-string v1, "CREATE TRIGGER WifiConfigurationPolicy_FKIndex  BEFORE INSERT  ON WIFI_CONF FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 709
    :goto_d
    :try_start_f
    const-string v1, "CREATE TABLE BLUETOOTH( adminUid INTEGER PRIMARY KEY NOT NULL, bluetoothEnabled NUMERIC DEFAULT 1, bluetoothLogEnabled NUMERIC DEFAULT 0, allowDataTransfer NUMERIC DEFAULT 1, pairingEnabled NUMERIC DEFAULT 1, allowOutgoingCalls NUMERIC DEFAULT 1, limitedDiscoverableEnabled NUMERIC DEFAULT 1, discoverableModeEnabled NUMERIC DEFAULT 1, desktopConnectivityEnabled NUMERIC DEFAULT 1, profileSettings INTEGER UNSIGNED DEFAULT 65535, profilePolicyEnabled NUMERIC DEFAULT 0, devicePolicyEnabled NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    const-string v1, "CREATE TRIGGER bluetoothPolicy_FKIndex  BEFORE INSERT  ON BLUETOOTH FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 751
    :goto_e
    const-string v1, "BLUETOOTH_DEVICE_BWLIST"

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 752
    const-string v1, "BLUETOOTH_PROFILE_BWLIST"

    invoke-static {v1, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createBlackWhiteListPolicyTables(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 755
    :try_start_10
    const-string v1, "CREATE TABLE BROWSER( adminUid INTEGER PRIMARY KEY NOT NULL, browserSettings INTEGER UNSIGNED DEFAULT 23, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 762
    const-string v1, "CREATE TRIGGER browserPolicy_FKIndex  BEFORE INSERT  ON BROWSER FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 773
    :goto_f
    :try_start_11
    const-string v1, "CREATE TABLE CALLING( adminUid INTEGER PRIMARY KEY NOT NULL, lastChangeId INTEGER DEFAULT 0, isSet NUMERIC DEFAULT 0, cbPwd TEXT DEFAULT NULL, AI NUMERIC DEFAULT 0, IR NUMERIC DEFAULT 0, AO NUMERIC DEFAULT 0, OI NUMERIC DEFAULT 0, OX NUMERIC DEFAULT 0, cfBusy TEXT DEFAULT NULL, cfNoReply TEXT DEFAULT NULL, cfNotReachable TEXT DEFAULT NULL, cfUnconditional TEXT DEFAULT NULL, cfBusyEnabled NUMERIC DEFAULT 0, cfNoReplyEnabled NUMERIC DEFAULT 0, cfNotReachableEnabled NUMERIC DEFAULT 0, cfUnconditionalEnabled NUMERIC DEFAULT 0, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 796
    const-string v1, "CREATE TRIGGER callingPolicy_FKIndex  BEFORE INSERT  ON CALLING FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 807
    :goto_10
    :try_start_12
    const-string v1, "CREATE TABLE PHONERESTRICTION( adminUid INTEGER PRIMARY KEY NOT NULL, outgoingPattern TEXT DEFAULT NULL, incomingPattern TEXT DEFAULT NULL, emergencyCallOnly NUMERIC DEFAULT 0, limitCallEnable NUMERIC DEFAULT false, incomingCallByDay NUMERIC DEFAULT 0, incomingCallByWeek NUMERIC DEFAULT 0, incomingCallByMonth NUMERIC DEFAULT 0, outgoingCallByDay NUMERIC DEFAULT 0, outgoingCallByWeek NUMERIC DEFAULT 0, outgoingCallByMonth NUMERIC DEFAULT 0, smsRestrictionIncomingPattern TEXT DEFAULT NULL, smsRestrictionOutgoingPattern TEXT DEFAULT NULL, limitSmsEnable NUMERIC DEFAULT 0, incomingSmsByDay NUMERIC DEFAULT 0, incomingSmsByWeek NUMERIC DEFAULT 0, incomingSmsByMonth NUMERIC DEFAULT 0, outgoingSmsByDay NUMERIC DEFAULT 0, outgoingSmsByWeek NUMERIC DEFAULT 0, outgoingSmsByMonth NUMERIC DEFAULT 0, enableWifiDataCallDataStatistic NUMERIC DEFAULT 0, enableDataCallLogging NUMERIC DEFAULT 0, enableLimitDataCall NUMERIC DEFAULT 0, dataCallByDay INTEGER DEFAULT 0, dataCallByWeek INTEGER DEFAULT 0, dataCallByMonth INTEGER DEFAULT 0, allowIncomingSms NUMERIC DEFAULT 1, allowOutgoingSms NUMERIC DEFAULT 1, allowIncomingMms NUMERIC DEFAULT 1, allowOutgoingMms NUMERIC DEFAULT 1, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 917
    const-string v1, "CREATE TRIGGER phoneRestrictionPolicy_FKIndex  BEFORE INSERT  ON PHONERESTRICTION FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 928
    :goto_11
    :try_start_13
    const-string v1, "CREATE TABLE DEVICE( deviceWifiSent INTEGER DEFAULT 0, deviceWifiReceived INTEGER DEFAULT 0, deviceNetworkSent INTEGER DEFAULT 0, deviceNetworkReceived INTEGER DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 939
    :goto_12
    :try_start_14
    const-string v1, "CREATE TABLE DATACALLLOG( dataCallDate INTEGER PRIMARY KEY NOT NULL, dataCallStatus TEXT DEFAULT NULL, dataCallNetType TEXT DEFAULT NULL, dataCallBytes INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    .line 949
    :goto_13
    :try_start_15
    const-string v1, "CREATE TABLE generic (name TEXT PRIMARY KEY,value TEXT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    .line 957
    :goto_14
    :try_start_16
    const-string v1, "CREATE TABLE CallingLog (callingType NUMERIC DEFAULT -1, callingTimeStamp TEXT NULL, callingAddress TEXT NULL, callingDuration TEXT NULL, callingStatus TEXT NULL);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    .line 969
    :goto_15
    :try_start_17
    const-string v1, "EDM"

    const-string v2, "onCreate.... do database before create do firewall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v1, "CREATE TABLE FirewallTable (adminUid TEXT, rules TEXT,type TEXT, enabled TEXT, ruleId INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER, FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 980
    const-string v1, "CREATE TRIGGER firewallPolicy_FKIndex  BEFORE INSERT  ON FirewallTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    .line 1012
    :goto_16
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createAppPermissionControlTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1015
    invoke-static {p1}, Lcom/android/server/enterprise/EdmStorageHelper;->createKioskTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1019
    :try_start_18
    const-string v1, "CREATE TABLE WebFilterTable (adminUid TEXT, url TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1025
    const-string v1, "CREATE TRIGGER webFilterPolicy_FKIndex  BEFORE INSERT  ON WebFilterTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    .line 1038
    :goto_17
    :try_start_19
    const-string v1, "CREATE TABLE WebFilterLogTable (url TEXT, time TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    const-string v1, "CREATE TRIGGER webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    .line 1061
    :goto_18
    :try_start_1a
    const-string v1, "CREATE TABLE WebFilterSettingsTable (adminUid TEXT, logging TEXT DEFAULT \'false\', filtering TEXT DEFAULT \'false\', id INTEGER PRIMARY KEY AUTOINCREMENT,  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1068
    const-string v1, "CREATE TRIGGER webFilterSettingsPolicy_FKIndex  BEFORE INSERT  ON WebFilterSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1081
    :goto_19
    :try_start_1b
    const-string v1, "CREATE TABLE BluetoothLogTable (time TEXT, log TEXT, id INTEGER PRIMARY KEY AUTOINCREMENT );"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1086
    const-string v1, "CREATE TRIGGER bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1104
    :goto_1a
    :try_start_1c
    const-string v1, "CREATE TABLE EmailSettingsTable (adminUid INTEGER NOT NULL, EmailAddress TEXT NOT NULL, EmailReqSigSmime NUMERIC DEFAULT 0, EmailReqEncryptSmime NUMERIC DEFAULT 0, EmailSigningCertName TEXT NULL, EmailEncryptCertName TEXT NULL, EmailAllowForward NUMERIC DEFAULT 1,  PRIMARY KEY (EmailAddress,adminUid)  FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string v1, "CREATE TRIGGER emailPolicy_FKIndex  BEFORE INSERT  ON EmailSettingsTable FOR EACH ROW BEGIN  SELECT CASE WHEN ((SELECT adminUid FROM ADMIN WHERE adminUid = new.adminUid) IS NULL) THEN RAISE (ABORT,\'Foreign Key Violation\') END;  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1132
    :goto_1b
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMINcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 161
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_PERMISSIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 178
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 179
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_SIGNATUREcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 202
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 203
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPLICATION_MISC creation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 329
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 330
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAScreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 355
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 356
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LOCATIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 463
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .line 464
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RESTRICTIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 495
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 496
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASSWORDcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 524
    .end local v0           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 525
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MISCcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 533
    .end local v0           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 534
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMScreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 566
    .end local v0           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 567
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ROAMINGcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 585
    .end local v0           #e:Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 586
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPNcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 620
    .end local v0           #e:Ljava/lang/Exception;
    :catch_d
    move-exception v0

    .line 621
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFIcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 704
    .end local v0           #e:Ljava/lang/Exception;
    :catch_e
    move-exception v0

    .line 705
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_CONFcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 747
    .end local v0           #e:Ljava/lang/Exception;
    :catch_f
    move-exception v0

    .line 748
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLUETOOTHcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 768
    .end local v0           #e:Ljava/lang/Exception;
    :catch_10
    move-exception v0

    .line 769
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BROWSERcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 802
    .end local v0           #e:Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .line 803
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CALLINGcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 923
    .end local v0           #e:Ljava/lang/Exception;
    :catch_12
    move-exception v0

    .line 924
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHONERESTRICTIONcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 933
    .end local v0           #e:Ljava/lang/Exception;
    :catch_13
    move-exception v0

    .line 934
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVICEcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 944
    .end local v0           #e:Ljava/lang/Exception;
    :catch_14
    move-exception v0

    .line 945
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATACALLLOGcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 952
    .end local v0           #e:Ljava/lang/Exception;
    :catch_15
    move-exception v0

    .line 953
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genericcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 963
    .end local v0           #e:Ljava/lang/Exception;
    :catch_16
    move-exception v0

    .line 964
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallingLogcreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 989
    .end local v0           #e:Ljava/lang/Exception;
    :catch_17
    move-exception v0

    .line 990
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "EDM"

    const-string v2, "onCreate.... error creating firewall db"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string v1, "EdmStorageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirewallTablecreation failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1033
    .end local v0           #e:Ljava/lang/Exception;
    :catch_18
    move-exception v0

    .line 1034
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 1056
    .end local v0           #e:Ljava/lang/Exception;
    :catch_19
    move-exception v0

    .line 1057
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18

    .line 1076
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1a
    move-exception v0

    .line 1077
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    .line 1099
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1b
    move-exception v0

    .line 1100
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a

    .line 1128
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1c
    move-exception v0

    .line 1129
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1135
    const-string v0, "EdmStorageHelper"

    const-string v1, "Downgrading not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    :try_start_0
    const-string v1, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1143
    const-string v0, "EdmStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 1146
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->migrateFromV2ToV2_1(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1148
    :cond_0
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    .line 1149
    const-string v0, "EdmStorageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : Upgrading from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->migrateFromV2_1ToV2_2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1153
    :cond_1
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EdmStorageHelper;->migrateFromV2_2ToV3_0(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1157
    :cond_2
    return-void
.end method

.method putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 14
    .parameter "sTableName"
    .parameter "sColumns"
    .parameter "sValues"
    .parameter "cv"

    .prologue
    .line 2516
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2518
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2519
    const/4 v9, 0x0

    .line 2520
    .local v9, where:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2521
    .local v3, buf:Ljava/lang/StringBuffer;
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 2522
    .local v4, column:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "= ? AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2521
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2524
    .end local v4           #column:Ljava/lang/String;
    :cond_0
    const/4 v10, 0x0

    const-string v11, " AND "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 2526
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v5, p1, v0, v9, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 2527
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2528
    const/4 v10, 0x1

    .line 2539
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #buf:Ljava/lang/StringBuffer;
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #where:Ljava/lang/String;
    :goto_1
    return v10

    .line 2532
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v5, p1, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    .line 2533
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2534
    const/4 v10, 0x1

    goto :goto_1

    .line 2536
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v6

    .line 2537
    .local v6, e:Ljava/lang/Exception;
    const-string v10, "EdmStorageHelper"

    const-string v11, "could not execute putDataByFields"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1865
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1866
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, p1, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1867
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1879
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 1870
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, p1, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1871
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1875
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 1876
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x6

    const-string v4, "EDM"

    const-string v5, "Failled on putValues(String sTableName, ContentValues cvValues)"

    invoke-static {v2, v4, v5}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1879
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    move v2, v3

    .line 1874
    goto :goto_0
.end method

.method putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "cvUpdateValues"
    .parameter "cvWhereValues"

    .prologue
    .line 1891
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1893
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1894
    const/4 v8, 0x0

    .line 1934
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v8

    .line 1896
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 1897
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 1898
    .local v7, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1899
    .local v6, where:Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 1900
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 1902
    .local v3, index:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1904
    .local v4, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v6, :cond_1

    .line 1905
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #where:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1906
    .restart local v6       #where:Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1911
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1908
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1930
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #where:Ljava/lang/StringBuilder;
    .end local v7           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1931
    .local v1, e:Ljava/lang/Exception;
    const/4 v8, 0x6

    const-string v9, "EDM"

    const-string v10, "Failed on putValues(String sTableName, ContentValues cvUpdateValues, ContentValues cvWhereValues)"

    invoke-static {v8, v9, v10}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1934
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1913
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    .restart local v5       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v6       #where:Ljava/lang/StringBuilder;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1914
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, p1, p2, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 1915
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1916
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1919
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1922
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6           #where:Ljava/lang/StringBuilder;
    .end local v7           #whereArgs:[Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 1923
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1924
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1926
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1927
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1929
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method putValues(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 10
    .parameter "sTableName"
    .parameter "sAdmin"
    .parameter "cvValues"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1836
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1837
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 1838
    .local v2, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v3, v6

    .line 1841
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 1842
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1855
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :goto_0
    return v4

    .line 1845
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #where:Ljava/lang/String;
    .restart local v3       #whereArgs:[Ljava/lang/String;
    :cond_0
    const-string v6, "adminUid"

    invoke-virtual {p3, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const/4 v6, 0x0

    invoke-virtual {v0, p1, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 1847
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1851
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #where:Ljava/lang/String;
    .end local v3           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1852
    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x6

    const-string v6, "EDM"

    const-string v7, "Failled on putValues(String sTableName, String sAdmin, ContentValues cvValues)"

    invoke-static {v4, v6, v7}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1855
    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #where:Ljava/lang/String;
    .restart local v3       #whereArgs:[Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 1850
    goto :goto_0
.end method

.method putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 9
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"
    .parameter "cvValues"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2271
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2272
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adminUid=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2273
    .local v1, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    aput-object p4, v2, v3

    .line 2276
    .local v2, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, p5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 2277
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2287
    :goto_0
    return v3

    .line 2281
    :cond_0
    const-string v5, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2282
    invoke-virtual {p5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 2284
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 2287
    goto :goto_0
.end method

.method putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1821
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1822
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1823
    const/4 v1, 0x1

    .line 1825
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method remove(Ljava/lang/String;)Z
    .locals 3
    .parameter "sTableName"

    .prologue
    const/4 v2, 0x0

    .line 2607
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2608
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 2609
    .local v1, result:Z
    invoke-virtual {v0, p1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 2610
    const/4 v1, 0x1

    .line 2612
    :cond_0
    return v1
.end method

.method removeAdmin(I)Z
    .locals 7
    .parameter "iAdmin"

    .prologue
    .line 2344
    const/4 v2, 0x0

    .line 2346
    .local v2, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2347
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "adminUid=? AND canRemove=? "

    .line 2349
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "1"

    aput-object v6, v4, v5

    .line 2350
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v5, "ADMIN"

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 2351
    const/4 v2, 0x1

    .line 2358
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :goto_0
    return v2

    .line 2353
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 2355
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2356
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on removeAdmin"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeByAdmin(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sTableName"
    .parameter "admin"

    .prologue
    .line 2586
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2587
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "adminUid=? "

    .line 2588
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2592
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 2593
    const/4 v1, 0x1

    .line 2597
    .local v1, result:Z
    :goto_0
    return v1

    .line 2595
    .end local v1           #result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "sTableName"
    .parameter "admin"
    .parameter "sColumn"
    .parameter "value"

    .prologue
    .line 2298
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2299
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adminUid=? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2300
    .local v2, where:Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    .line 2304
    .local v3, whereArgs:[Ljava/lang/String;
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    .line 2305
    const/4 v1, 0x1

    .line 2309
    .local v1, result:Z
    :goto_0
    return v1

    .line 2307
    .end local v1           #result:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #result:Z
    goto :goto_0
.end method

.method removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 8
    .parameter "sTableName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2688
    .local p2, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2690
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2691
    .local v1, columnName:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2693
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2694
    .local v5, where:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 2696
    .local v6, whereArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 2699
    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2700
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2701
    .local v0, column:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2702
    const-string v7, " =? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2703
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 2704
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2705
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2706
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2708
    .end local v0           #column:Ljava/lang/String;
    :cond_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2710
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, p1, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7
.end method

.method removeByFilterSmallerThan(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter "sTableName"
    .parameter "cvValues"

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2638
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    .line 2641
    .local v5, result:Z
    if-nez p2, :cond_1

    .line 2646
    :try_start_0
    const-string v9, "1"

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 2647
    const/4 v5, 0x1

    .line 2682
    :goto_0
    return v5

    .line 2649
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2652
    :cond_1
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    .line 2653
    .local v8, whereArgs:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2654
    .local v7, where:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 2655
    .local v6, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .line 2657
    .local v3, index:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2659
    .local v4, key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_2

    .line 2660
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #where:Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2661
    .restart local v7       #where:Ljava/lang/StringBuilder;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 2666
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2663
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2678
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #index:I
    .end local v4           #key:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #where:Ljava/lang/StringBuilder;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2679
    .local v1, e:Ljava/lang/Exception;
    const/4 v9, 0x6

    const-string v10, "EDM"

    const-string v11, "Failled on removeByFilter(String sTableName, ContentValues cvValues)"

    invoke-static {v9, v10, v11}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2668
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #index:I
    .restart local v6       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v7       #where:Ljava/lang/StringBuilder;
    .restart local v8       #whereArgs:[Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_5

    .line 2669
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-lez v9, :cond_4

    .line 2670
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2672
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2675
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "sTableName"
    .parameter "sColumn"
    .parameter "sAdmin"

    .prologue
    .line 1775
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 1776
    .local v11, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1781
    const/4 v9, 0x0

    .line 1783
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1784
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v2, v1

    .line 1787
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "adminUid=? "

    .line 1788
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 1791
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1792
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    move-result-object v9

    .line 1796
    :goto_0
    if-eqz v9, :cond_2

    .line 1797
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1798
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v1, v9

    .line 1811
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1794
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 1801
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1811
    const/4 v1, 0x0

    goto :goto_1

    .line 1803
    :catch_0
    move-exception v10

    .line 1804
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    const-string v5, "EDM"

    const-string v6, "Failed on Cursor select(String sTableName, String sColumn, String sAdmin)"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 1806
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1807
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method select(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "tableName"
    .parameter "column"
    .parameter "value"
    .parameter "columnResult"

    .prologue
    .line 2482
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2483
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 2484
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p4, v2, v1

    .line 2487
    .local v2, columns:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "=? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2488
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v4, v1

    .line 2491
    .local v4, whereArgs:[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2492
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    move-result-object v9

    .line 2496
    :goto_0
    if-eqz v9, :cond_2

    .line 2497
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2506
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v9

    .line 2494
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 2500
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 2502
    :catch_0
    move-exception v10

    .line 2503
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    const-string v5, "EDM"

    const-string v6, "Cursor select(String tableName, String column, String value, String columnResult)"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "tablename"
    .parameter "returnColumns"
    .parameter
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 2717
    .local p3, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2718
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 2719
    .local v11, columnName:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2721
    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 2722
    .local v14, where:Ljava/lang/StringBuffer;
    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    .line 2724
    .local v5, whereArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 2726
    .local v12, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2727
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2728
    .local v10, column:Ljava/lang/String;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2730
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v5, v12

    .line 2731
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2732
    const-string v2, " AND "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2733
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2735
    .end local v10           #column:Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 2736
    :cond_2
    const-string v2, ";"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2740
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2743
    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_1
.end method

.method selectGenericTable(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "name"

    .prologue
    const/4 v12, 0x0

    .line 2395
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v11

    .line 2396
    .local v11, oldPolicy:Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v11}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2401
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2402
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "value"

    aput-object v5, v2, v1

    .line 2405
    .local v2, columns:[Ljava/lang/String;
    const-string v3, "name=? "

    .line 2406
    .local v3, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    .line 2409
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v1, "generic"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2411
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 2412
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2413
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2423
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v9

    .line 2416
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v4       #whereArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2421
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #whereArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-static {v11}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v9, v12

    .line 2423
    goto :goto_0

    .line 2418
    :catch_0
    move-exception v10

    .line 2419
    .local v10, e:Ljava/lang/Exception;
    const/4 v1, 0x6

    const-string v5, "EdmStorageHelper"

    const-string v6, "Failed on selectGenericTable"

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/Utils;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I
    .locals 9
    .parameter "tablename"
    .parameter "toBeUpdated"
    .parameter "whereParameters"

    .prologue
    .line 2750
    invoke-virtual {p0}, Lcom/android/server/enterprise/EdmStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2752
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2753
    .local v6, where:Ljava/lang/StringBuffer;
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    .line 2754
    .local v7, whereArgs:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2755
    .local v5, set:Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2757
    .local v3, it:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 2759
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2760
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2761
    .local v0, columnAndOperator:Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2762
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v2

    .line 2763
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2764
    const-string v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2765
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2767
    .end local v0           #columnAndOperator:Ljava/lang/String;
    :cond_1
    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2769
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p1, p2, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 2770
    .local v4, ret:I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2771
    return v4
.end method

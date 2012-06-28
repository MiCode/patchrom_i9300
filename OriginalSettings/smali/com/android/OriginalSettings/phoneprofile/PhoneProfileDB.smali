.class public Lcom/android/OriginalSettings/phoneprofile/PhoneProfileDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PhoneProfileDB.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 47
    const-string v0, "profile.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 53
    const-string v0, "CREATE TABLE profile (_id INTEGER PRIMARY KEY AUTOINCREMENT, profile_mode INTEGER NOT NULL DEFAULT 0,profile_name TEXT,profile_silent INTEGER NOT NULL DEFAULT 0,profile_vibration INTEGER NOT NULL DEFAULT 0,profile_ring_volume INTEGER NOT NULL DEFAULT 1,profile_system_volume INTEGER NOT NULL DEFAULT 1,profile_music_volume INTEGER NOT NULL DEFAULT 1,profile_notification_volume INTEGER NOT NULL DEFAULT 1,profile_notification_use_ring_vol INTEGER NOT NULL DEFAULT 0,profile_hph_music_volume INTEGER NOT NULL DEFAULT 1,profile_ringtone TEXT,profile_gsm_ringtone TEXT,profile_video_ringtone TEXT,profile_notification_tone TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 74
    const-string v0, "DROP TABLE IF EXISTS profile"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/phoneprofile/PhoneProfileDB;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    return-void
.end method

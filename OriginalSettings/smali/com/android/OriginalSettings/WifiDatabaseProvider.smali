.class public Lcom/android/OriginalSettings/WifiDatabaseProvider;
.super Landroid/content/ContentProvider;
.source "WifiDatabaseProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    const-string v0, "content://com.android.settings.WifiDatabaseProvider/wifi_location"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 51
    sget-object v0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.WifiDatabaseProvider"

    const-string v2, "wifi_location"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.WifiDatabaseProvider"

    const-string v2, "wifi_location/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 141
    sget-object v3, Lcom/android/OriginalSettings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 150
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :pswitch_0
    iget-object v3, p0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;->deleteAll()I

    move-result v0

    .line 153
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 154
    return v0

    .line 146
    .end local v0           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 147
    .local v1, row:J
    iget-object v3, p0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;->deleteEntry(J)I

    move-result v0

    .line 148
    .restart local v0       #count:I
    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "_uri"
    .parameter "_initialValues"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, p2}, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;->insertEntry(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 128
    .local v0, rowID:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 129
    sget-object v3, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 130
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 131
    return-object v2

    .line 133
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 108
    sget-object v3, Lcom/android/OriginalSettings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 117
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown URI"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 110
    :pswitch_0
    iget-object v3, p0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;->getAllEntries()Landroid/database/Cursor;

    move-result-object v0

    .line 119
    .local v0, c:Landroid/database/Cursor;
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 120
    return-object v0

    .line 113
    .end local v0           #c:Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 114
    .local v1, row:J
    iget-object v3, p0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;->getEntry(J)Landroid/database/Cursor;

    move-result-object v0

    .line 115
    .restart local v0       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 162
    sget-object v3, Lcom/android/OriginalSettings/WifiDatabaseProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :pswitch_0
    const/4 v0, 0x1

    .line 175
    .local v0, count:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/WifiDatabaseProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 176
    return v0

    .line 168
    .end local v0           #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 169
    .local v1, row:J
    iget-object v3, p0, Lcom/android/OriginalSettings/WifiDatabaseProvider;->db:Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;

    invoke-virtual {v3, v1, v2, p2}, Lcom/android/OriginalSettings/WifiDatabaseProvider$WifiDatabaseHelper;->updateEntry(JLandroid/content/ContentValues;)I

    move-result v0

    .line 170
    .restart local v0       #count:I
    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

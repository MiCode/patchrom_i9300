.class Lcom/sec/android/internal/ims/external/VideoChatContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoChatContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/VideoChatContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 112
    const-string v0, "VideoChatTableContent1.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 126
    const-string v0, "Create table VideoChatTable( _id INTEGER PRIMARY KEY AUTOINCREMENT, Number TEXT,DateTime TEXT,MyFontColor TEXT,OtherFontColor TEXT,MyFOntSize TEXT,FilePath TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 141
    const-string v0, "DROP TABLE IF EXISTS VideoChatTable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/VideoChatContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    return-void
.end method

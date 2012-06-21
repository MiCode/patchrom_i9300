.class public Lcom/android/internal/policy/impl/TickerUtil;
.super Ljava/lang/Object;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;,
        Lcom/android/internal/policy/impl/TickerUtil$NewsConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$StockConstants;,
        Lcom/android/internal/policy/impl/TickerUtil$StockItem;,
        Lcom/android/internal/policy/impl/TickerUtil$NewsData;,
        Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;,
        Lcom/android/internal/policy/impl/TickerUtil$StockDemon;,
        Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mNewsUpdateDate:Ljava/lang/String;

.field private static mStockUpdateDate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-string v0, "Ticker"

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 436
    return-void
.end method

.method public static formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v0, result:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/android/internal/policy/impl/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, value:Ljava/lang/String;
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_0
    const-string v1, "MM/dd"

    .line 51
    :cond_1
    :goto_0
    invoke-static {v1, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 48
    :cond_2
    const-string v2, "dd-MM-yyyy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    const-string v1, "dd/MM"

    goto :goto_0
.end method

.method public static formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "when"

    .prologue
    .line 37
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v1, result:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 39
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v5, result:Ljava/lang/StringBuilder;
    const-string v6, "yyyy"

    .line 59
    .local v6, year:Ljava/lang/String;
    const-string v4, "MM"

    .line 60
    .local v4, month:Ljava/lang/String;
    const-string v0, "dd"

    .line 61
    .local v0, day:Ljava/lang/String;
    const-string v1, "-"

    .line 63
    .local v1, divider:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    .line 64
    .local v2, formatArray:[C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    .line 65
    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    .line 72
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    .line 75
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getDateTimeString(JLandroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "timemills"
    .parameter "contex"

    .prologue
    .line 84
    :try_start_0
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 85
    .local v1, dateformat:Ljava/text/DateFormat;
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 87
    .local v3, timeformat:Ljava/text/DateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 88
    .local v0, date:Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 90
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateformat:Ljava/text/DateFormat;
    .end local v3           #timeformat:Ljava/text/DateFormat;
    :goto_0
    return-object v4

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, ""

    goto :goto_0
.end method

.method public static getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 343
    const-string v0, ""

    .line 344
    .local v0, defaultLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 346
    return-object v0
.end method

.method private static getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "ctx"
    .parameter "region"

    .prologue
    const/4 v4, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 95
    const/4 v6, 0x0

    .line 96
    .local v6, DefaultNews:Ljava/lang/String;
    const-string v0, "\\/"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, code:[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v0, "REGION"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v0, " = ? AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v0, "LANG"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v0, " = ? AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v0, "TITLE"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v0, " = ? "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    array-length v0, v8

    if-ge v0, v13, :cond_0

    move-object v7, v6

    .line 121
    .end local v6           #DefaultNews:Ljava/lang/String;
    .local v7, DefaultNews:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 108
    .end local v7           #DefaultNews:Ljava/lang/String;
    .restart local v6       #DefaultNews:Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    .line 109
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsHeadColumns;->HEADER_COLS:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aget-object v5, v8, v11

    aput-object v5, v4, v11

    aget-object v5, v8, v12

    aput-object v5, v4, v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "yh_daemon_service_key_set_default_news"

    invoke-static {v5, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "ORDERED ASC,_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 113
    if-eqz v9, :cond_3

    .line 114
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    const-string v0, "CATEGORY"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v7, v6

    .line 121
    .end local v6           #DefaultNews:Ljava/lang/String;
    .restart local v7       #DefaultNews:Ljava/lang/String;
    goto :goto_0
.end method

.method static getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 22
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v18, mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_set_default_news"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 138
    .local v16, defaultNews:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultNews = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_app_service_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 142
    .local v21, value:I
    and-int/lit8 v1, v21, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 v17, 0x1

    .line 144
    .local v17, mAppLockScreen:Z
    :goto_0
    const/4 v15, 0x0

    .line 146
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_0

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "yh_daemon_service_key_regions"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 148
    .local v13, city:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 149
    const/16 v18, 0x0

    .line 206
    .end local v13           #city:Ljava/lang/String;
    .end local v18           #mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_0
    :goto_1
    return-object v18

    .line 142
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #mAppLockScreen:Z
    .restart local v18       #mNewArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 151
    .restart local v13       #city:Ljava/lang/String;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v17       #mAppLockScreen:Z
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/policy/impl/TickerUtil;->getDefaultNews(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 153
    .local v14, currentdefaultNews:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v20, sb:Ljava/lang/StringBuffer;
    const-string v1, "NEWS_CATEGORY"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v1, " = ? "

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;->TABLE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil$YahooNewsColumns;->CONTENTS_COLS:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const-string v6, "NEWS_PUBDATE DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 160
    if-eqz v15, :cond_5

    .line 161
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    :cond_3
    new-instance v19, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/policy/impl/TickerUtil$NewsData;-><init>()V

    .line 166
    .local v19, mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    const-string v1, "NEWS_TITLE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .line 168
    const-string v1, "NEWS_CONTENTTEXT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsContentText:Ljava/lang/String;

    .line 170
    const-string v1, "NEWS_CREDIT"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .line 173
    const-string v1, "NEWS_PUBDATE"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 174
    .local v7, NewsPublishTime:J
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 175
    .local v11, NewsTime_buf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v1, "  "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .line 182
    const-string v1, "NEWS_TIME"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 183
    .local v9, NewsTime:J
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    .local v12, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v1, "  "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    move-object/from16 v0, p0

    invoke-static {v0, v9, v10}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTime:Ljava/lang/String;

    .line 191
    const-string v1, "NEWS_LINK"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    iput-object v1, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    .line 192
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewsURL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    .line 195
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNewsUpdateDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 201
    .end local v7           #NewsPublishTime:J
    .end local v9           #NewsTime:J
    .end local v11           #NewsTime_buf:Ljava/lang/StringBuffer;
    .end local v12           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    .end local v19           #mNewsData:Lcom/android/internal/policy/impl/TickerUtil$NewsData;
    :cond_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 203
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_1
.end method

.method static getNewsUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mNewsUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method static getStockData(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 23
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stockclock_daemon_service_key_app_service_status"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 212
    .local v11, appServiceStatus:I
    and-int/lit8 v3, v11, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v17, 0x1

    .line 215
    .local v17, mAppLockScreen:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 216
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 217
    .local v13, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 219
    .local v19, pm:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    .line 221
    .local v15, isEdaily:Z
    const/16 v16, 0x0

    .line 223
    .local v16, isSina:Z
    const/16 v20, 0x0

    .line 227
    .local v20, stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_start_0
    const-string v3, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 228
    const-string v3, "content://com.sec.android.daemonapp.ap.yahoostock.stockclock/maininfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 229
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Yahoo:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_1
    :try_start_1
    const-string v3, "com.sec.android.daemonapp.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 237
    const-string v3, "content://com.sec.android.daemonapp.stockclock/daemoninfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 238
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Edaily:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_2
    :try_start_2
    const-string v3, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 246
    const-string v3, "content://com.sec.android.daemonapp.ap.sinastock.stockclock/daemoninfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 247
    sget-object v20, Lcom/android/internal/policy/impl/TickerUtil$StockDemon;->Sina:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 248
    const/16 v16, 0x1

    .line 253
    :goto_3
    if-nez v20, :cond_1

    .line 254
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "There is no stock daemon."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v21, 0x0

    .line 339
    :goto_4
    return-object v21

    .line 212
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #isEdaily:Z
    .end local v16           #isSina:Z
    .end local v17           #mAppLockScreen:Z
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 230
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v15       #isEdaily:Z
    .restart local v16       #isSina:Z
    .restart local v17       #mAppLockScreen:Z
    .restart local v19       #pm:Landroid/content/pm/PackageManager;
    .restart local v20       #stockdemon:Lcom/android/internal/policy/impl/TickerUtil$StockDemon;
    :catch_0
    move-exception v14

    .line 231
    .local v14, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    .end local v14           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v12

    .line 240
    .local v12, common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Edayly daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    .end local v12           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v12

    .line 250
    .restart local v12       #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    const-string v4, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 258
    .end local v12           #common:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v21, stocklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    if-eqz v13, :cond_e

    .line 261
    invoke-interface {v13}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 262
    const/4 v15, 0x1

    .line 264
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    :cond_3
    new-instance v18, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/policy/impl/TickerUtil$StockItem;-><init>()V

    .line 268
    .local v18, mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    const/16 v22, 0x0

    .line 269
    .local v22, value:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v15, v3, :cond_6

    .line 271
    invoke-static/range {p0 .. p0}, Lcom/android/internal/policy/impl/TickerUtil;->getDefaultLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 272
    const-string v3, "NAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 276
    :goto_5
    const-string v3, "CURRENT_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 277
    const-string v3, "CHANGE_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 278
    const-string v3, "CHANGE_PERCENT"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 280
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :goto_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 334
    .end local v18           #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .end local v22           #value:Ljava/lang/String;
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 274
    .restart local v18       #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .restart local v22       #value:Ljava/lang/String;
    :cond_5
    const-string v3, "HNAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    goto :goto_5

    .line 283
    :cond_6
    const-string v3, "NAME"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 284
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7

    .line 285
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 286
    :cond_7
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 287
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_c

    .line 288
    const-string v3, "PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 293
    :goto_7
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    .line 294
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 295
    :cond_8
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 296
    const/4 v3, 0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_d

    .line 297
    const-string v3, "CHANGE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 302
    :goto_8
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_9

    .line 303
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 304
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 306
    const-string v3, "CHANGE_PERCENT"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 307
    const-string v3, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_a

    .line 308
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    .line 309
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 311
    const-string v3, "UPDATE_DATE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 314
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 315
    .local v8, NewsTime:J
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v10, NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    const-string v3, "  "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    const-string v3, "  "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/internal/policy/impl/TickerUtil;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->updateDate:Ljava/lang/String;

    .line 321
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    .line 323
    if-nez v16, :cond_b

    .line 325
    const-string v3, "LINK_URL"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->url:Ljava/lang/String;

    .line 327
    sget-object v3, Lcom/android/internal/policy/impl/TickerUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_b
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 291
    .end local v8           #NewsTime:J
    .end local v10           #NewsUpdatedTime_buf:Ljava/lang/StringBuffer;
    :cond_c
    const-string v3, "CURRENT_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_7

    .line 300
    :cond_d
    const-string v3, "CHANGE_PRICE"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_8

    .line 336
    .end local v18           #mStockItem:Lcom/android/internal/policy/impl/TickerUtil$StockItem;
    .end local v22           #value:Ljava/lang/String;
    :cond_e
    const/16 v21, 0x0

    goto/16 :goto_4
.end method

.method static getStockUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil;->mStockUpdateDate:Ljava/lang/String;

    return-object v0
.end method

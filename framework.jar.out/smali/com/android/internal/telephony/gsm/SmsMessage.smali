.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "Gsm/SmsMessage"

.field public static mDay:I

.field public static mHour:I

.field public static mMin:I

.field public static mMonth:I

.field public static mSec:I

.field public static mTimezone:I

.field public static mYear:I

.field private static unsupportedDatacodingScheme:Z


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field protected numberOfMessages:I

.field private protocolIdentifier:I

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 114
    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 149
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    .line 877
    return-void
.end method

.method public static ConvertDateStringToBCD(Ljava/lang/String;)[B
    .locals 18
    .parameter "mDate"

    .prologue
    .line 2133
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "date : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2136
    .local v12, year:Ljava/lang/String;
    const/4 v14, 0x2

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2137
    .local v4, month:Ljava/lang/String;
    const/4 v14, 0x4

    const/4 v15, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2138
    .local v1, day:Ljava/lang/String;
    const/4 v14, 0x6

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2139
    .local v2, hour:Ljava/lang/String;
    const/16 v14, 0x8

    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2140
    .local v3, min:Ljava/lang/String;
    const/16 v14, 0xa

    const/16 v15, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2142
    .local v5, sec:Ljava/lang/String;
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1. year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    .line 2146
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    .line 2147
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    .line 2148
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    .line 2149
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    .line 2150
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    .line 2151
    const/4 v14, 0x0

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2153
    const/4 v13, 0x0

    .line 2154
    .local v13, zone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    .line 2157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v14

    int-to-long v10, v14

    .line 2158
    .local v10, tzOffset:J
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "timezeone"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gez v14, :cond_0

    .line 2161
    neg-long v10, v10

    .line 2162
    const-wide/32 v14, 0xdbba0

    div-long v6, v10, v14

    .line 2163
    .local v6, temp:J
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "timezeone->temp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    long-to-int v14, v6

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v8

    .line 2165
    .local v8, temp2:I
    div-int/lit8 v14, v8, 0xa

    shl-int/lit8 v14, v14, 0x4

    rem-int/lit8 v15, v8, 0xa

    add-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2166
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mTimezone"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "2. year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    const-string v14, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2184
    .end local v8           #temp2:I
    .local v9, timestamp:Ljava/lang/String;
    :goto_0
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "timestamp string: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v14

    return-object v14

    .line 2174
    .end local v6           #temp:J
    .end local v9           #timestamp:Ljava/lang/String;
    :cond_0
    const-wide/32 v14, 0xdbba0

    div-long v6, v10, v14

    .line 2175
    .restart local v6       #temp:J
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "timezeone->temp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    long-to-int v14, v6

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v14

    sput v14, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2177
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mTimezone"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const-string v14, "Gsm/SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "2. year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " min:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sec:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    const-string v14, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x6

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #timestamp:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 3
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1178
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    .line 1179
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 1180
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1181
    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 1182
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1183
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 1184
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1186
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1192
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1194
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 1189
    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1190
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 4
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    const/4 v3, 0x1

    .line 1208
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1210
    .local v1, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-ne p2, v3, :cond_1

    .line 1211
    const/4 v1, 0x0

    .line 1220
    :goto_0
    if-nez v1, :cond_0

    .line 1221
    new-instance v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1222
    .restart local v1       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 1223
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1224
    const/16 v2, 0x8c

    if-le v0, v2, :cond_3

    .line 1225
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1227
    iget v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1233
    :goto_1
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1235
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 1213
    :cond_1
    if-nez p2, :cond_2

    .line 1214
    invoke-static {p0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 1217
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 1230
    .restart local v0       #octets:I
    :cond_3
    iput v3, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1231
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 7
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "maxEmailLen"

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, -0x1

    .line 1251
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v3

    .line 1252
    .local v3, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez v3, :cond_0

    .line 1253
    new-instance v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v3           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v3}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1254
    .restart local v3       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    mul-int/lit8 p2, p2, 0x2

    .line 1256
    if-lez p2, :cond_1

    rsub-int v4, p2, 0x8c

    add-int/lit8 v0, v4, -0x1

    .line 1258
    .local v0, maxLenPerSMS:I
    :goto_0
    if-lez p2, :cond_2

    rsub-int v4, p2, 0x86

    add-int/lit8 v1, v4, -0x1

    .line 1261
    .local v1, maxLenPerSMSWithHeader:I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 1262
    .local v2, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1263
    if-le v2, v0, :cond_5

    .line 1264
    add-int/lit8 v4, v0, -0x2

    if-le p2, v4, :cond_3

    .line 1265
    iput v6, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1266
    iput v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1286
    :goto_2
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1289
    .end local v0           #maxLenPerSMS:I
    .end local v1           #maxLenPerSMSWithHeader:I
    .end local v2           #octets:I
    :cond_0
    return-object v3

    .line 1256
    :cond_1
    const/16 v0, 0x8c

    goto :goto_0

    .line 1258
    .restart local v0       #maxLenPerSMS:I
    :cond_2
    const/16 v1, 0x86

    goto :goto_1

    .line 1268
    .restart local v1       #maxLenPerSMSWithHeader:I
    .restart local v2       #octets:I
    :cond_3
    rem-int v4, v2, v1

    if-eqz v4, :cond_4

    .line 1269
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1270
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1273
    :cond_4
    div-int v4, v2, v1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1274
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1278
    :cond_5
    add-int/lit8 v4, v1, -0x2

    if-lt p2, v4, :cond_6

    .line 1279
    iput v6, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1280
    iput v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1282
    :cond_6
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1283
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 8
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"
    .parameter "maxEmailLen"

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1305
    new-instance v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1307
    .local v3, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-ne p2, v5, :cond_1

    .line 1308
    const/4 v3, 0x0

    .line 1317
    :goto_0
    if-nez v3, :cond_0

    .line 1318
    new-instance v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .end local v3           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    invoke-direct {v3}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 1319
    .restart local v3       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    mul-int/lit8 p3, p3, 0x2

    .line 1321
    if-lez p3, :cond_3

    rsub-int v4, p3, 0x8c

    add-int/lit8 v0, v4, -0x1

    .line 1323
    .local v0, maxLenPerSMS:I
    :goto_1
    if-lez p3, :cond_4

    rsub-int v4, p3, 0x86

    add-int/lit8 v1, v4, -0x1

    .line 1326
    .local v1, maxLenPerSMSWithHeader:I
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 1327
    .local v2, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    .line 1328
    if-le v2, v0, :cond_7

    .line 1329
    add-int/lit8 v4, v0, -0x2

    if-le p3, v4, :cond_5

    .line 1330
    iput v7, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1331
    iput v6, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1351
    :goto_3
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 1354
    .end local v0           #maxLenPerSMS:I
    .end local v1           #maxLenPerSMSWithHeader:I
    .end local v2           #octets:I
    :cond_0
    return-object v3

    .line 1310
    :cond_1
    if-nez p2, :cond_2

    .line 1311
    invoke-static {p0, v5, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v3

    goto :goto_0

    .line 1314
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v3

    goto :goto_0

    .line 1321
    :cond_3
    const/16 v0, 0x8c

    goto :goto_1

    .line 1323
    .restart local v0       #maxLenPerSMS:I
    :cond_4
    const/16 v1, 0x86

    goto :goto_2

    .line 1333
    .restart local v1       #maxLenPerSMSWithHeader:I
    .restart local v2       #octets:I
    :cond_5
    rem-int v4, v2, v1

    if-eqz v4, :cond_6

    .line 1334
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1335
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1338
    :cond_6
    div-int v4, v2, v1

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1339
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1343
    :cond_7
    add-int/lit8 v4, v1, -0x2

    if-lt p3, v4, :cond_8

    .line 1344
    iput v7, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1345
    iput v6, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1347
    :cond_8
    iput v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    .line 1348
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 225
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 227
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 232
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 233
    const-string v5, "Gsm/SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 253
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 237
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 240
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 244
    .local v3, size:I
    new-array v2, v3, [B

    .line 245
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V

    .line 248
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mti: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " indexOnIcc :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " statusOnIcc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 252
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "Gsm/SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 253
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 164
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 165
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static decToBcd(I)I
    .locals 4
    .parameter "digit"

    .prologue
    .line 2114
    const/4 v1, 0x0

    .line 2115
    .local v1, left:I
    const/4 v2, 0x0

    .line 2116
    .local v2, right:I
    const/4 v0, 0x0

    .line 2118
    .local v0, bcd_value:I
    div-int/lit8 v1, p0, 0xa

    .line 2119
    rem-int/lit8 v2, p0, 0xa

    .line 2121
    mul-int/lit8 v3, v2, 0xa

    add-int v0, v3, v1

    .line 2123
    return v0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 489
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 491
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 493
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 494
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 501
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 502
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    return-object v0

    .line 498
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "date"
    .parameter "header"

    .prologue
    .line 2263
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .line 2265
    .local v7, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz v7, :cond_1

    .line 2266
    iget v12, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-gtz v12, :cond_0

    iget v12, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-lez v12, :cond_1

    .line 2267
    :cond_0
    const-string v12, "Gsm/SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSimDeliverPdu: ted.languageTable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const-string v12, "Gsm/SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSimDeliverPdu: ted.languageShiftTable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2270
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v12, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2271
    iget v12, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v12, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2272
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 2277
    .end local v6           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_3

    .line 2278
    :cond_2
    const/4 v5, 0x0

    .line 2374
    :goto_0
    return-object v5

    .line 2281
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 2283
    .local v5, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz p4, :cond_4

    const/16 v12, 0x40

    :goto_1
    or-int/lit8 v12, v12, 0x0

    int-to-byte v4, v12

    .line 2285
    .local v4, mtiByte:B
    const/4 v2, 0x0

    .line 2289
    .local v2, bo:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {p0, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 2294
    if-eqz v7, :cond_5

    .line 2295
    iget v12, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v13, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .line 2303
    .local v11, userData:[B
    :goto_2
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_6

    .line 2305
    const/4 v5, 0x0

    goto :goto_0

    .line 2283
    .end local v2           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v4           #mtiByte:B
    .end local v11           #userData:[B
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2299
    .restart local v2       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #mtiByte:B
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_2

    .line 2315
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2319
    const/4 v12, 0x7

    new-array v9, v12, [B

    .line 2321
    .local v9, timestamp:[B
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 2323
    const/4 v12, 0x0

    array-length v13, v9

    invoke-virtual {v2, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2325
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v2, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2373
    :goto_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v5, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedMessage:[B

    goto :goto_0

    .line 2327
    .end local v9           #timestamp:[B
    .end local v11           #userData:[B
    :catch_0
    move-exception v3

    .line 2333
    .local v3, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string/jumbo v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 2341
    .local v8, textPart:[B
    if-eqz p4, :cond_7

    .line 2342
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v8

    add-int/2addr v12, v13

    new-array v11, v12, [B

    .line 2344
    .restart local v11       #userData:[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2345
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    array-length v14, v8

    invoke-static {v8, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2350
    :goto_4
    array-length v12, v11

    const/16 v13, 0x8c

    if-le v12, v13, :cond_8

    .line 2352
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2334
    .end local v8           #textPart:[B
    .end local v11           #userData:[B
    :catch_1
    move-exception v10

    .line 2335
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "Gsm/SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2338
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2347
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #textPart:[B
    :cond_7
    move-object v11, v8

    .restart local v11       #userData:[B
    goto :goto_4

    .line 2357
    :cond_8
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2361
    const/4 v12, 0x7

    new-array v9, v12, [B

    .line 2363
    .restart local v9       #timestamp:[B
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 2365
    const/4 v12, 0x0

    array-length v13, v9

    invoke-virtual {v2, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2368
    array-length v12, v11

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2370
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v2, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method private static getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 9
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2197
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0xb4

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2201
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 2202
    iput-object v6, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    .line 2208
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2211
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2213
    .local v1, c:C
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2214
    const-string v6, "Gsm/SmsMessage"

    const-string v7, "Address is Numeric."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 2219
    .local v2, daBytes:[B
    if-nez v2, :cond_1

    .line 2220
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2249
    :goto_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2251
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #daBytes:[B
    :goto_2
    return-object v0

    .line 2204
    .end local v1           #c:C
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, p3, Lcom/android/internal/telephony/SmsMessageBase$DeliverPduBase;->encodedScAddress:[B

    goto :goto_0

    .line 2222
    .restart local v1       #c:C
    .restart local v2       #daBytes:[B
    :cond_1
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x2

    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xf0

    if-ne v7, v8, :cond_2

    :goto_3
    sub-int v4, v6, v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2225
    array-length v4, v2

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    move v4, v5

    .line 2222
    goto :goto_3

    .line 2228
    .end local v2           #daBytes:[B
    :cond_3
    const-string v7, "Gsm/SmsMessage"

    const-string v8, "Address is Alphabetic."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2239
    .restart local v2       #daBytes:[B
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2242
    const/16 v6, 0xd0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2245
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v2, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 2233
    .end local v2           #daBytes:[B
    :catch_0
    move-exception v3

    .line 2234
    .local v3, ex:Lcom/android/internal/telephony/EncodeException;
    const-string v4, "Gsm/SmsMessage"

    const-string v5, "Implausible UnsupportedEncodingException "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    .line 2236
    goto :goto_2
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12
    .parameter "scAddress"
    .parameter "Address"
    .parameter "message"
    .parameter "header"

    .prologue
    .line 2009
    const/4 v9, 0x0

    invoke-static {p2, v9}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v5

    .line 2011
    .local v5, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz v5, :cond_1

    .line 2012
    iget v9, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    if-gtz v9, :cond_0

    iget v9, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    if-lez v9, :cond_1

    .line 2013
    :cond_0
    const-string v9, "Gsm/SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSimSubmitPdu: ted.languageTable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const-string v9, "Gsm/SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSimSubmitPdu: ted.languageShiftTable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    new-instance v4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2016
    .local v4, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v9, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v9, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2017
    iget v9, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v9, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2018
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p3

    .line 2023
    .end local v4           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_3

    .line 2024
    :cond_2
    const/4 v3, 0x0

    .line 2106
    :goto_0
    return-object v3

    .line 2027
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2029
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p3, :cond_4

    const/16 v9, 0x40

    :goto_1
    or-int/lit8 v9, v9, 0x1

    int-to-byte v2, v9

    .line 2031
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 2039
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-eqz v5, :cond_5

    .line 2040
    :try_start_0
    iget v9, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v10, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p2, p3, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v8

    .line 2048
    .local v8, userData:[B
    :goto_2
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xa0

    if-le v9, v10, :cond_6

    .line 2050
    const/4 v3, 0x0

    goto :goto_0

    .line 2029
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mtiByte:B
    .end local v8           #userData:[B
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 2044
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #mtiByte:B
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p2, p3, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v8

    .restart local v8       #userData:[B
    goto :goto_2

    .line 2060
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2065
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v0, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2105
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0

    .line 2067
    .end local v8           #userData:[B
    :catch_0
    move-exception v1

    .line 2073
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string/jumbo v9, "utf-16be"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2081
    .local v6, textPart:[B
    if-eqz p3, :cond_7

    .line 2082
    array-length v9, p3

    array-length v10, v6

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 2084
    .restart local v8       #userData:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, p3

    invoke-static {p3, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2085
    const/4 v9, 0x0

    array-length v10, p3

    array-length v11, v6

    invoke-static {v6, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2090
    :goto_4
    array-length v9, v8

    const/16 v10, 0x8c

    if-le v9, v10, :cond_8

    .line 2092
    const/4 v3, 0x0

    goto :goto_0

    .line 2074
    .end local v6           #textPart:[B
    .end local v8           #userData:[B
    :catch_1
    move-exception v7

    .line 2075
    .local v7, uex:Ljava/io/UnsupportedEncodingException;
    const-string v9, "Gsm/SmsMessage"

    const-string v10, "Implausible UnsupportedEncodingException "

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2078
    const/4 v3, 0x0

    goto :goto_0

    .line 2087
    .end local v7           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #textPart:[B
    :cond_7
    move-object v8, v6

    .restart local v8       #userData:[B
    goto :goto_4

    .line 2097
    :cond_8
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2100
    array-length v9, v8

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2102
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v0, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method private static getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "Address"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 1967
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1971
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 1972
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 1978
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1981
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1985
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1989
    .local v1, daBytes:[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1994
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1997
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1999
    return-object v0

    .line 1974
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    move v2, v3

    .line 1989
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "originationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 769
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 770
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 771
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 772
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 774
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 775
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 777
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 779
    .local v4, smsHeaderData:[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 780
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v2, 0x0

    .line 808
    :goto_0
    return-object v2

    .line 785
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 786
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 793
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 798
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 801
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 802
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 805
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 807
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v7, 0x0

    .line 723
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 724
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 725
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 726
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 728
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 729
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 731
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 733
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 734
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v2, 0x0

    .line 762
    :goto_0
    return-object v2

    .line 739
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 740
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 747
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 752
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 755
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 756
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 759
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 761
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 679
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 691
    if-gtz p8, :cond_0

    if-lez p9, :cond_1

    .line 693
    :cond_0
    new-instance v12, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 694
    .local v12, Header:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p8

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 695
    move/from16 v0, p9

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 696
    invoke-static {v12}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 701
    .end local v12           #Header:Lcom/android/internal/telephony/SmsHeader;
    :goto_0
    return-object v1

    :cond_1
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 280
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 304
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 305
    :cond_0
    const/4 v7, 0x0

    .line 402
    :goto_0
    return-object v7

    .line 308
    :cond_1
    if-nez p5, :cond_4

    .line 310
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v9

    .line 311
    .local v9, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 312
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 313
    iget v0, v9, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 315
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 316
    :cond_2
    if-eqz p4, :cond_5

    .line 317
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 318
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 320
    :cond_3
    const-string v12, "Gsm/SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 324
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 325
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 336
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 338
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 339
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 346
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 347
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 373
    .local v11, userData:[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 374
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 376
    const-string v12, "Gsm/SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 328
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 329
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 330
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 331
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 338
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 351
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 352
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 353
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "Gsm/SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 356
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 359
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 363
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 364
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 365
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 366
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "Gsm/SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 387
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 400
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 401
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 389
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 391
    const-string v12, "Gsm/SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 396
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 524
    const-string v10, "Gsm/SmsMessage"

    const-string v11, "getSubmitPdu with Options"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 527
    :cond_0
    const/4 v6, 0x0

    .line 664
    :goto_0
    return-object v6

    .line 529
    :cond_1
    const-string v10, "Gsm/SmsMessage"

    const-string v11, "**getSubmitPdu_Options**"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v10, "Gsm/SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "replyPath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const-string v10, "Gsm/SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encodingType = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p8

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v10, "Gsm/SmsMessage"

    const-string v11, "**********************"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v6, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v6}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 536
    .local v6, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v10, 0x40

    :goto_1
    or-int/lit8 v10, v10, 0x1

    int-to-byte v5, v10

    .line 537
    .local v5, mtiByte:B
    if-eqz p5, :cond_2

    .line 539
    or-int/lit16 v10, v5, 0x80

    int-to-byte v5, v10

    .line 540
    const-string v10, "Gsm/SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mtiByte = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_2
    or-int/lit8 v10, v5, 0x10

    int-to-byte v5, v10

    .line 544
    const-string v10, "Gsm/SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mtiByte = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v3, 0x0

    .line 547
    .local v3, bo:Ljava/io/ByteArrayOutputStream;
    move/from16 v0, p3

    invoke-static {p0, p1, v5, v0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v3

    .line 553
    const/4 v10, 0x1

    move/from16 v0, p8

    if-ne v0, v10, :cond_4

    .line 555
    :try_start_0
    new-instance v10, Lcom/android/internal/telephony/EncodeException;

    const-string v11, "Input Method is Unicode"

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :catch_0
    move-exception v4

    .line 610
    .local v4, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string/jumbo v10, "utf-16be"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 620
    .local v7, textPart:[B
    if-eqz p4, :cond_6

    .line 622
    move-object/from16 v0, p4

    array-length v10, v0

    array-length v11, v7

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x1

    new-array v9, v10, [B

    .line 624
    .local v9, userData:[B
    const/4 v10, 0x0

    move-object/from16 v0, p4

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 625
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p4

    array-length v12, v0

    move-object/from16 v0, p4

    invoke-static {v0, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    const/4 v10, 0x0

    move-object/from16 v0, p4

    array-length v11, v0

    add-int/lit8 v11, v11, 0x1

    array-length v12, v7

    invoke-static {v7, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    :goto_2
    array-length v10, v9

    const/16 v11, 0x8c

    if-le v10, v11, :cond_7

    .line 634
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 536
    .end local v3           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v4           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v5           #mtiByte:B
    .end local v7           #textPart:[B
    .end local v9           #userData:[B
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 570
    .restart local v3       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #mtiByte:B
    :cond_4
    :try_start_2
    move-object/from16 v0, p4

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {p2, v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v9

    .line 573
    .restart local v9       #userData:[B
    const/4 v10, 0x0

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xa0

    if-le v10, v11, :cond_5

    .line 575
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 586
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 589
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 590
    const-string v10, "Gsm/SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expirty = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 663
    :goto_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v6, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 613
    .end local v9           #userData:[B
    .restart local v4       #ex:Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v8

    .line 614
    .local v8, uex:Ljava/io/UnsupportedEncodingException;
    const-string v10, "Gsm/SmsMessage"

    const-string v11, "Implausible UnsupportedEncodingException "

    invoke-static {v10, v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 629
    .end local v8           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #textPart:[B
    :cond_6
    move-object v9, v7

    .restart local v9       #userData:[B
    goto :goto_2

    .line 651
    :cond_7
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 655
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 656
    const-string v10, "Gsm/SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "expirty = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    array-length v10, v9

    invoke-virtual {v3, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 660
    const/4 v10, 0x0

    array-length v11, v9

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method public static getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 411
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 414
    .local v4, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v3, 0x1

    .line 416
    .local v3, mtiByte:B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0xb4

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 420
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 421
    iput-object v8, v4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 428
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 431
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 440
    .local v1, daBytes:[B
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v9, v6, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v10, 0xf0

    if-ne v6, v10, :cond_1

    const/4 v6, 0x1

    :goto_1
    sub-int v6, v9, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 444
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 447
    const/16 v6, 0x7f

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 455
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 462
    .local v5, userData:[B
    aget-byte v6, v5, v7

    and-int/lit16 v6, v6, 0xff

    const/16 v9, 0xa0

    if-le v6, v9, :cond_2

    move-object v4, v8

    .line 474
    .end local v4           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v5           #userData:[B
    :goto_2
    return-object v4

    .line 424
    .end local v1           #daBytes:[B
    .restart local v4       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    move v6, v7

    .line 440
    goto :goto_1

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    const-string v6, "Gsm/SmsMessage"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    .line 459
    goto :goto_2

    .line 468
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v5       #userData:[B
    :cond_2
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    array-length v6, v5

    invoke-virtual {v0, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 473
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    goto :goto_2
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 826
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 830
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 831
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    .line 841
    :goto_0
    if-eqz p3, :cond_0

    .line 843
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 844
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Gsm/SmsMessage"

    const-string v4, "SMS status report requested"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 851
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 859
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 862
    .local v1, daBytes:[B
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 866
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 870
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 873
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 874
    return-object v0

    .line 833
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v2, v3

    .line 866
    goto :goto_1
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 263
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 204
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 205
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 192
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 193
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "Gsm/SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 1474
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1476
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    .line 1478
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1479
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Gsm/SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1488
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    .line 1489
    iget v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1507
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1495
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1509
    :goto_0
    return-void

    .line 1499
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1503
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1489
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1604
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1606
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1608
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1609
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS originating address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v1, :cond_1

    .line 1613
    const-string v1, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "originatingAddress.address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1622
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1629
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1631
    const-string v1, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS SC timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_3

    move v0, v2

    .line 1635
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1636
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_2
    move v1, v3

    .line 1604
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 1633
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1518
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1521
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1523
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1525
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1527
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1529
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1531
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1534
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1536
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1537
    .local v0, extraParams:I
    move v2, v0

    .line 1538
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 1542
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 1521
    goto :goto_0

    .line 1545
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1546
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1549
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1550
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1553
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1554
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 1555
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1558
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 1554
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1562
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1565
    shr-int/lit8 v1, p2, 0x3

    and-int/lit8 v1, v1, 0x3

    iput v1, p1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    .line 1568
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1571
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1572
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v1, :cond_0

    .line 1573
    const-string v1, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recipientAddress.address : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_1

    .line 1577
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS recipient address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1588
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1590
    sget-boolean v1, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v1, :cond_2

    .line 1591
    const-string v1, "Gsm/SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS TP-PID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data coding scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_2
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_4

    move v0, v2

    .line 1599
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1601
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_3
    move v1, v3

    .line 1562
    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 1597
    goto :goto_1
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 12
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/16 v11, 0xe0

    const/16 v10, 0xc0

    const/16 v9, 0x84

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1646
    const/4 v3, 0x0

    .line 1647
    .local v3, hasMessageClass:Z
    const/4 v4, 0x0

    .line 1649
    .local v4, userDataCompressed:Z
    const/4 v2, 0x0

    .line 1665
    .local v2, encodingType:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v9, :cond_2

    .line 1666
    const/4 v2, 0x4

    .line 1792
    :goto_0
    const-string v5, "Gsm/SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasUserDataHeader : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    if-ne v2, v6, :cond_12

    :goto_1
    invoke-virtual {p1, p2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1797
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 1798
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1874
    packed-switch v2, :pswitch_data_0

    .line 1904
    :goto_2
    sget-boolean v5, Lcom/android/internal/telephony/gsm/SmsMessage;->DBG:Z

    if-eqz v5, :cond_0

    .line 1905
    const-string v5, "Gsm/SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "messageBody : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1910
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 1913
    :cond_1
    if-nez v3, :cond_15

    .line 1914
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 1931
    :goto_3
    return-void

    .line 1667
    .end local v1           #count:I
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_7

    .line 1669
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_3

    move v5, v6

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1670
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4

    move v4, v6

    .line 1671
    :goto_5
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_5

    move v3, v6

    .line 1673
    :goto_6
    if-eqz v4, :cond_6

    .line 1674
    const-string v5, "Gsm/SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    sput-boolean v6, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_3
    move v5, v7

    .line 1669
    goto :goto_4

    :cond_4
    move v4, v7

    .line 1670
    goto :goto_5

    :cond_5
    move v3, v7

    .line 1671
    goto :goto_6

    .line 1702
    :cond_6
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_0

    .line 1704
    :pswitch_0
    const/4 v2, 0x1

    .line 1705
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1709
    :pswitch_1
    const/4 v2, 0x3

    .line 1710
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1715
    :pswitch_2
    const-string v5, "Gsm/SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    sput-boolean v6, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1718
    const/4 v2, 0x2

    .line 1719
    goto/16 :goto_0

    .line 1722
    :pswitch_3
    const-string v5, "Gsm/SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1725
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 1730
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v8, 0xf0

    if-ne v5, v8, :cond_9

    .line 1731
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1732
    const/4 v3, 0x1

    .line 1733
    const/4 v4, 0x0

    .line 1734
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1736
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_8

    .line 1738
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1741
    :cond_8
    const/4 v2, 0x2

    goto/16 :goto_0

    .line 1743
    :cond_9
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-eq v5, v10, :cond_a

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v8, 0xd0

    if-eq v5, v8, :cond_a

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v11, :cond_f

    .line 1752
    :cond_a
    sput-boolean v7, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1754
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v11, :cond_b

    .line 1755
    const/4 v2, 0x3

    .line 1760
    :goto_7
    const/4 v4, 0x0

    .line 1761
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x8

    const/16 v8, 0x8

    if-ne v5, v8, :cond_c

    move v0, v6

    .line 1765
    .local v0, active:Z
    :goto_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_e

    .line 1766
    iput-boolean v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1767
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1768
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v10, :cond_d

    move v5, v6

    :goto_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_0

    .line 1757
    .end local v0           #active:Z
    :cond_b
    const/4 v2, 0x1

    goto :goto_7

    :cond_c
    move v0, v7

    .line 1761
    goto :goto_8

    .restart local v0       #active:Z
    :cond_d
    move v5, v7

    .line 1768
    goto :goto_9

    .line 1770
    :cond_e
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1772
    const-string v5, "Gsm/SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MWI for fax, email, or other "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1775
    .end local v0           #active:Z
    :cond_f
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xc0

    const/16 v8, 0x80

    if-ne v5, v8, :cond_11

    .line 1778
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    if-ne v5, v9, :cond_10

    .line 1780
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 1782
    :cond_10
    const-string v5, "Gsm/SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1786
    :cond_11
    const-string v5, "Gsm/SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    sput-boolean v6, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_12
    move v6, v7

    .line 1795
    goto/16 :goto_1

    .line 1877
    .restart local v1       #count:I
    :pswitch_4
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1881
    :pswitch_5
    if-eqz p2, :cond_14

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    :goto_a
    if-eqz p2, :cond_13

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v7, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_13
    invoke-virtual {p1, v1, v5, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    :cond_14
    move v5, v7

    goto :goto_a

    .line 1887
    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1891
    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_2

    .line 1916
    :cond_15
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_3

    .line 1918
    :pswitch_8
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1921
    :pswitch_9
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1924
    :pswitch_a
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1927
    :pswitch_b
    sget-object v5, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto/16 :goto_3

    .line 1874
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1702
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1916
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1369
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 1956
    const/4 v0, 0x0

    return v0
.end method

.method public getMessagePriority()I
    .locals 2

    .prologue
    .line 2379
    const-string v0, "Gsm/SmsMessage"

    const-string v1, "getMessagePriority: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1361
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1390
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v0, :cond_0

    .line 1394
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1407
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-eqz v0, :cond_0

    .line 1411
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1418
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_1

    .line 1440
    :cond_0
    :goto_0
    return v0

    .line 1422
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1432
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1440
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1375
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1458
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1452
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 178
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    sget-object v1, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GSM"

    const-string v1, "SMS recipient address is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

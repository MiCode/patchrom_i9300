.class Lcom/android/internal/telephony/cat/RilMessage;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "msgId"
    .parameter "rawData"

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 165
    iput-object p2, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 166
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 170
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 171
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 172
    return-void
.end method

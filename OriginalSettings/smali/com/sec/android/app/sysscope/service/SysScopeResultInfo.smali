.class public Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
.super Ljava/lang/Object;
.source "SysScopeResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x44785514acd511e6L


# instance fields
.field private mResultCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sysscope/service/ResultCode;",
            ">;"
        }
    .end annotation
.end field

.field mTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 461
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 113
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 195
    .local v0, r:Lcom/sec/android/app/sysscope/service/ResultCode;
    sget-object v3, Lcom/sec/android/app/sysscope/service/ResultCode;->OK:Lcom/sec/android/app/sysscope/service/ResultCode;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sysscope/service/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->setDate(J)V

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .local v0, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    .line 441
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 451
    return-void

    .line 443
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/ResultCode;->fromInt(I)Lcom/sec/android/app/sysscope/service/ResultCode;

    move-result-object v2

    .line 445
    .local v2, r:Lcom/sec/android/app/sysscope/service/ResultCode;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sysscope/service/ResultCode;->setDescription(Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDate(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 235
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v0, b:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    if-nez v3, :cond_0

    .line 341
    const-string v3, ""

    .line 377
    :goto_0
    return-object v3

    .line 347
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 353
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 355
    .local v2, r:Lcom/sec/android/app/sysscope/service/ResultCode;
    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/service/ResultCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/service/ResultCode;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, desc:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_2
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    return-void

    .line 413
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 415
    .local v0, r:Lcom/sec/android/app/sysscope/service/ResultCode;
    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/ResultCode;->value()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/ResultCode;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.class public final Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;
.super Ljava/util/AbstractCollection;
.source "ScreenCaptureRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CircularQueue"
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x100

.field private static final MAX_CAPACITY:I = 0x40000000


# instance fields
.field private bitmask:I

.field private capacity:I

.field private consumerIndex:I

.field private maxCapacity:I

.field private producerIndex:I

.field private q:[Ljava/lang/Object;

.field private size:I

.field final synthetic this$0:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;


# direct methods
.method public constructor <init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;-><init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;I)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 170
    const/high16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;-><init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;II)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;II)V
    .locals 2
    .parameter
    .parameter "c"
    .parameter "mc"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 173
    iput-object p1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->this$0:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 148
    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    .line 149
    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    .line 150
    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    .line 174
    if-le p2, p3, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capacity greater than maximum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    const/high16 v0, 0x4000

    if-le p3, v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum capacity greater than allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    iput v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    :goto_0
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    if-ge v0, p2, :cond_2

    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    goto :goto_0

    .line 184
    :cond_2
    iput v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->maxCapacity:I

    :goto_1
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->maxCapacity:I

    if-ge v0, p3, :cond_3

    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->maxCapacity:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->maxCapacity:I

    goto :goto_1

    .line 186
    :cond_3
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    .line 187
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    .line 188
    return-void
.end method

.method private constructor <init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)V
    .locals 4
    .parameter
    .parameter "oldQueue"

    .prologue
    const/4 v3, 0x0

    .line 191
    iput-object p1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->this$0:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 148
    iput v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    .line 149
    iput v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    .line 150
    iput v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    .line 192
    iget v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    .line 193
    iget v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    .line 194
    iget v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    .line 195
    iget v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    .line 196
    iget v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->maxCapacity:I

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->maxCapacity:I

    .line 197
    iget v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    .line 198
    iget-object v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    .line 199
    iget-object v0, p2, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 142
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    return v0
.end method

.method private expandQueue()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 206
    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    iget v4, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->maxCapacity:I

    if-ne v3, v4, :cond_0

    .line 227
    :goto_0
    return v2

    .line 210
    :cond_0
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    .line 211
    .local v0, old_capacity:I
    iget-object v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    .line 213
    .local v1, old_q:[Ljava/lang/Object;
    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    iget v4, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    .line 214
    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    .line 215
    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    .line 217
    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    iget-object v4, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    sub-int v5, v0, v5

    invoke-static {v1, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    :cond_1
    iput v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    .line 225
    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    iput v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    .line 227
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 231
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    if-ne v0, v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->expandQueue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 236
    :cond_0
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    .line 237
    iget-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    aput-object p1, v0, v1

    .line 239
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    .line 241
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity:I

    return v0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    iput v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    .line 272
    iput v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->producerIndex:I

    .line 273
    iput v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    .line 274
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;

    iget-object v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->this$0:Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;

    invoke-direct {v0, v1, p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;-><init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService;Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 297
    new-instance v0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;

    invoke-direct {v0, p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue$1;-><init>(Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    if-nez v2, :cond_0

    move-object v0, v1

    .line 255
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    .line 250
    iget-object v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    aget-object v0, v2, v3

    .line 251
    .local v0, obj:Ljava/lang/Object;
    iget-object v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    aput-object v1, v2, v3

    .line 253
    iget v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 281
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - capacity: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' size: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, s:Ljava/lang/StringBuffer;
    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    if-lez v2, :cond_0

    .line 285
    const-string v2, " elements:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->size:I

    if-ge v0, v2, :cond_0

    .line 287
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 289
    iget-object v2, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->q:[Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->consumerIndex:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/samsung/ScreenCapture/ScreenCaptureRemoteService$CircularQueue;->bitmask:I

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

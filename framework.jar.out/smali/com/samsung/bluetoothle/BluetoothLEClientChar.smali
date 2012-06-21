.class public Lcom/samsung/bluetoothle/BluetoothLEClientChar;
.super Ljava/lang/Object;
.source "BluetoothLEClientChar.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/bluetoothle/BluetoothLEClientChar;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientChar"


# instance fields
.field private mCharPath:Ljava/lang/String;

.field private mCharUUID:Ljava/lang/String;

.field private mClientDesc:[B

.field private mDescription:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar$1;

    invoke-direct {v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar$1;-><init>()V

    sput-object v0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "charPath"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private LogD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 163
    const-string v0, "BluetoothLEClientChar"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getCharPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCharPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCharUUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCharUUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getCharVaule()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v2, "getCharVaule "

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    array-length v0, v2

    .line 73
    .local v0, len:I
    new-array v1, v0, [B

    .line 74
    .local v1, rValue:[B
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    .end local v0           #len:I
    .end local v1           #rValue:[B
    :goto_0
    return-object v1

    .line 78
    :cond_0
    const-string/jumbo v2, "the value is not initialized"

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClientConfigDesc()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    const-string v2, "getClientConfigDesc   : "

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    array-length v0, v2

    .line 97
    .local v0, len:I
    new-array v1, v0, [B

    .line 98
    .local v1, rValue:[B
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .end local v0           #len:I
    .end local v1           #rValue:[B
    :goto_0
    return-object v1

    .line 102
    :cond_0
    const-string/jumbo v2, "the value is not initialized"

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setCharPath(Ljava/lang/String;)V
    .locals 2
    .parameter "charPath"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCharPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setCharValue([B)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCharValue of  char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 85
    array-length v0, p1

    .line 86
    .local v0, len:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    .line 87
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    .line 88
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void
.end method

.method public setClientConfigDesc([B)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientConfigDes of  char : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 109
    array-length v0, p1

    .line 110
    .local v0, len:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    .line 111
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    .line 112
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method

.method setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProperty name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : Value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 118
    const-string v2, "Value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    .line 121
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    aput-byte v4, v2, v4

    .line 131
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProperty Value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    .end local v1           #i:I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check size of string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 125
    :try_start_0
    const-string v2, "UTF8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mValue:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "BluetoothLEClientChar"

    const-string v3, "## Exception in conversion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, "Name"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    iput-object p2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mName:Ljava/lang/String;

    .line 155
    :cond_3
    :goto_2
    return-void

    .line 135
    :cond_4
    const-string v2, "UUID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    iput-object p2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    goto :goto_2

    .line 137
    :cond_5
    const-string v2, "ClientDescriptor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 138
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 139
    :cond_6
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    .line 140
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    aput-byte v4, v2, v4

    .line 150
    :goto_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProperty mClientDesc :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->LogD(Ljava/lang/String;)V

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 142
    .end local v1           #i:I
    :cond_7
    const-string v2, "BluetoothLEClientChar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check size of string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_1
    const-string v2, "UTF8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mClientDesc:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 145
    :catch_1
    move-exception v0

    .line 146
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "BluetoothLEClientChar"

    const-string v3, "## Exception in conversion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    const-string v2, "Description"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    iput-object p2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mDescription:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public setcharUUID(Ljava/lang/String;)V
    .locals 0
    .parameter "uuid"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientChar;->mCharUUID:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 183
    return-void
.end method

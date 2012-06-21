.class Landroid/net/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApConfigStore$ActiveState;,
        Landroid/net/wifi/WifiApConfigStore$InactiveState;,
        Landroid/net/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String; = null

.field private static final AP_CONFIG_FILE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"

.field private static final errSSID:Ljava/lang/String; = "\t#ERROR#SSID#\n"


# instance fields
.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "target"

    .prologue
    .line 76
    const-string v0, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 68
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$DefaultState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    .line 69
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$InactiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    .line 70
    new-instance v0, Landroid/net/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiApConfigStore$ActiveState;-><init>(Landroid/net/wifi/WifiApConfigStore;)V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 73
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 78
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    .line 80
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 81
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 83
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiApConfigStore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/net/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private getMacAddressLast4Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 353
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, mac:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 355
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 357
    .local v0, len:I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 361
    .end local v0           #len:I
    .end local v2           #temp:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 359
    :cond_0
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 380
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 383
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 384
    .local v0, len:I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 387
    :cond_0
    return-object v1
.end method

.method private getRandom12Chars()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, randomUUID:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom4Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, randomUUID:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom8Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, randomUUID:Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTelephonyNumber(I)Ljava/lang/String;
    .locals 5
    .parameter "digit"

    .prologue
    .line 365
    iget-object v3, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 366
    .local v2, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, min:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 369
    .local v0, len:I
    if-nez p1, :cond_0

    .line 376
    .end local v0           #len:I
    .end local v1           #min:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 371
    .restart local v0       #len:I
    .restart local v1       #min:Ljava/lang/String;
    :cond_0
    if-lt v0, p1, :cond_2

    .line 372
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, p1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 374
    .end local v0           #len:I
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get MSISDN"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;
    .locals 1
    .parameter "context"
    .parameter "target"

    .prologue
    .line 87
    new-instance v0, Landroid/net/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 88
    .local v0, s:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Landroid/net/wifi/WifiApConfigStore;->start()V

    .line 89
    return-object v0
.end method

.method private parseCustFeaturePassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    const-string v0, "Random12Chars"

    const-string v1, "Random12Chars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    return-object v0

    .line 303
    :cond_0
    const-string v0, "Random8Chars"

    const-string v1, "Random12Chars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom8Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_1
    const-string v0, "Min10Digits"

    const-string v1, "Random12Chars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiApConfigStore;->getTelephonyNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 307
    :cond_2
    const-string v0, "ModelWith4RandomDigits"

    const-string v1, "Random12Chars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom4Chars()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    :cond_3
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parseCustFeatureSSID(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "errString"
    .parameter "flagErrorBreak"

    .prologue
    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v5, ssid:Ljava/lang/StringBuilder;
    const-string v6, "Default"

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, customSSID:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_a

    .line 268
    const-string v6, "Default"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    iget-object v6, p0, Landroid/net/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v7, 0x10404aa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_0
    const-string v6, "ModelName"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 272
    :cond_1
    const-string v6, "Random4Digits"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 274
    .local v4, random:Ljava/util/Random;
    const/16 v6, 0x2327

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    .end local v4           #random:Ljava/util/Random;
    :cond_2
    const-string v6, "Mac4Digits"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 276
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getMacAddressLast4Digits()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, mac:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 278
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 279
    :cond_3
    if-eqz p2, :cond_5

    .line 297
    .end local v2           #mac:Ljava/lang/String;
    .end local p1
    :cond_4
    :goto_2
    return-object p1

    .line 282
    .restart local v2       #mac:Ljava/lang/String;
    .restart local p1
    :cond_5
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    .end local v2           #mac:Ljava/lang/String;
    :cond_6
    const-string v6, "Min4Digits"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 284
    const/4 v6, 0x4

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiApConfigStore;->getTelephonyNumber(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, min:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 286
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :cond_7
    if-nez p2, :cond_4

    .line 290
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 291
    .end local v3           #min:Ljava/lang/String;
    :cond_8
    const-string v6, "Space"

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 292
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 294
    :cond_9
    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method private reGenerateAndWriteConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 314
    const-string v2, "WifiApConfigStore"

    const-string v3, "Re-Generate SSID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v2, "XXXX"

    invoke-direct {p0, v2, v4}, Landroid/net/wifi/WifiApConfigStore;->parseCustFeatureSSID(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, defaultSSID:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 318
    const-string v2, "None"

    const-string v3, "Random12Chars"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 329
    :goto_0
    const-string v2, "XXXX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 332
    :cond_0
    return-void

    .line 321
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 322
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->parseCustFeaturePassword()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, password:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 324
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 326
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDefaultApConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 234
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    const-string v2, ""

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 241
    :goto_0
    const-string v2, "None"

    const-string v3, "Random12Chars"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 254
    :goto_1
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 255
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 261
    const v2, 0x20019

    invoke-virtual {p0, v2, v0}, Landroid/net/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 262
    return-void

    .line 238
    :cond_0
    const-string v2, "\t#ERROR#SSID#\n"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/net/wifi/WifiApConfigStore;->parseCustFeatureSSID(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->parseCustFeaturePassword()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, password:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 246
    const-string v2, "\t#ERROR#SSID#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 248
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 249
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .parameter "config"

    .prologue
    .line 198
    const/4 v2, 0x0

    .line 200
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v2           #out:Ljava/io/DataOutputStream;
    .local v3, out:Ljava/io/DataOutputStream;
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 206
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 207
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 209
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 212
    .local v0, authType:I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 219
    :cond_0
    if-eqz v3, :cond_1

    .line 221
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    move-object v2, v3

    .line 225
    .end local v0           #authType:I
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    if-eqz v2, :cond_2

    .line 221
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 222
    :catch_1
    move-exception v4

    goto :goto_1

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v2, :cond_3

    .line 221
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 219
    :cond_3
    :goto_4
    throw v4

    .line 222
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v0       #authType:I
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 219
    .end local v0           #authType:I
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 216
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    goto :goto_2
.end method


# virtual methods
.method getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method loadApConfiguration()V
    .locals 9

    .prologue
    .line 156
    const/4 v3, 0x0

    .line 158
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 159
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Landroid/net/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 163
    .local v5, version:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 164
    const-string v6, "WifiApConfigStore"

    const-string v7, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 185
    if-eqz v4, :cond_0

    .line 187
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 191
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #version:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 168
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 170
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 171
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 172
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 173
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 175
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 176
    .local v0, authType:I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 177
    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 181
    :cond_3
    iput-object v1, p0, Landroid/net/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 185
    if-eqz v4, :cond_4

    .line 187
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_2
    move-object v3, v4

    .line 190
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 182
    .end local v0           #authType:I
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #version:I
    :catch_0
    move-exception v2

    .line 183
    .local v2, ignore:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-direct {p0}, Landroid/net/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    if-eqz v3, :cond_1

    .line 187
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 188
    :catch_1
    move-exception v6

    goto :goto_1

    .line 185
    .end local v2           #ignore:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_5

    .line 187
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 185
    :cond_5
    :goto_5
    throw v6

    .line 188
    :catch_2
    move-exception v7

    goto :goto_5

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :catch_3
    move-exception v6

    goto :goto_0

    .restart local v0       #authType:I
    :catch_4
    move-exception v6

    goto :goto_2

    .line 185
    .end local v0           #authType:I
    .end local v5           #version:I
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_4

    .line 182
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_3
.end method

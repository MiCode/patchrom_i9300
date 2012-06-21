.class final enum Lcom/sec/android/internal/ims/IMSService$NetworkType;
.super Ljava/lang/Enum;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/internal/ims/IMSService$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum CDMA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum EVDO_0:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum EVDO_A:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum EVDO_B:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum HSPA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

.field public static final enum eHRPD:Lcom/sec/android/internal/ims/IMSService$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 203
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "LTE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 204
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "UMTS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 205
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "HSPA"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->HSPA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 206
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 207
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "EVDO_0"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_0:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 208
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "EVDO_A"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_A:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 209
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "EVDO_B"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_B:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 210
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "eHRPD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->eHRPD:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 212
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "CDMA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->CDMA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 213
    new-instance v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    const-string v1, "IS3G"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/android/internal/ims/IMSService$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    .line 201
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sec/android/internal/ims/IMSService$NetworkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->NONE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->LTE:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->HSPA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$NetworkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_0:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_A:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->EVDO_B:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->eHRPD:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->CDMA:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/android/internal/ims/IMSService$NetworkType;->IS3G:Lcom/sec/android/internal/ims/IMSService$NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->$VALUES:[Lcom/sec/android/internal/ims/IMSService$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/internal/ims/IMSService$NetworkType;
    .locals 1
    .parameter "name"

    .prologue
    .line 201
    const-class v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/internal/ims/IMSService$NetworkType;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$NetworkType;->$VALUES:[Lcom/sec/android/internal/ims/IMSService$NetworkType;

    invoke-virtual {v0}, [Lcom/sec/android/internal/ims/IMSService$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/internal/ims/IMSService$NetworkType;

    return-object v0
.end method

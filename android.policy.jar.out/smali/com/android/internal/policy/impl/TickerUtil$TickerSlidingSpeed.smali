.class public final enum Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;
.super Ljava/lang/Enum;
.source "TickerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TickerSlidingSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

.field public static final enum fast:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

.field public static final enum normal:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

.field public static final enum slow:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    const-string v1, "slow"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    new-instance v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    const-string v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    new-instance v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    const-string v1, "fast"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->$VALUES:[Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->$VALUES:[Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    return-object v0
.end method

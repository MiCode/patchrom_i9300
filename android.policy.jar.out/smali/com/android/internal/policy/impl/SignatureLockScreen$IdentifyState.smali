.class final enum Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
.super Ljava/lang/Enum;
.source "SignatureLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "IdentifyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

.field public static final enum FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

.field public static final enum IDENTIFYING:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

.field public static final enum INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

.field public static final enum SUCCESS:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 80
    new-instance v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    const-string v1, "IDENTIFYING"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->IDENTIFYING:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 81
    new-instance v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->SUCCESS:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 82
    new-instance v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->INIT:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->IDENTIFYING:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->SUCCESS:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->FAIL:Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->$VALUES:[Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    const-class v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->$VALUES:[Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/SignatureLockScreen$IdentifyState;

    return-object v0
.end method

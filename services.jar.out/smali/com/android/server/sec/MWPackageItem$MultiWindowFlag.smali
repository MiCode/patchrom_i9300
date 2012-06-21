.class public final enum Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
.super Ljava/lang/Enum;
.source "MWPackageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MWPackageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiWindowFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

.field public static final enum FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

.field public static final enum TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .line 25
    new-instance v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    sget-object v1, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->$VALUES:[Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    return-object v0
.end method

.method public static values()[Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->$VALUES:[Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v0}, [Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    return-object v0
.end method

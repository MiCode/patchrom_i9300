.class public final enum Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;
.super Ljava/lang/Enum;
.source "MultiWindowObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/multiwindow/MultiWindowObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiWindowFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

.field public static final enum FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

.field public static final enum TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v2}, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    .line 30
    new-instance v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v3}, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    sget-object v1, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->FALSE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    aput-object v1, v0, v2

    sget-object v1, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->TRUE:Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    aput-object v1, v0, v3

    sput-object v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->$VALUES:[Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    return-object v0
.end method

.method public static values()[Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->$VALUES:[Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    invoke-virtual {v0}, [Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sec/multiwindow/MultiWindowObject$MultiWindowFlag;

    return-object v0
.end method

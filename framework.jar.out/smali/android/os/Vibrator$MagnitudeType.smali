.class public final enum Landroid/os/Vibrator$MagnitudeType;
.super Ljava/lang/Enum;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Vibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MagnitudeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/Vibrator$MagnitudeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/Vibrator$MagnitudeType;

.field public static final enum CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

.field public static final enum NotificationMagnitude:Landroid/os/Vibrator$MagnitudeType;

.field public static final enum TouchMagnitude:Landroid/os/Vibrator$MagnitudeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Landroid/os/Vibrator$MagnitudeType;

    const-string v1, "TouchMagnitude"

    invoke-direct {v0, v1, v2}, Landroid/os/Vibrator$MagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeType;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeType;

    .line 46
    new-instance v0, Landroid/os/Vibrator$MagnitudeType;

    const-string v1, "NotificationMagnitude"

    invoke-direct {v0, v1, v3}, Landroid/os/Vibrator$MagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeType;

    .line 47
    new-instance v0, Landroid/os/Vibrator$MagnitudeType;

    const-string v1, "CallMagnitude"

    invoke-direct {v0, v1, v4}, Landroid/os/Vibrator$MagnitudeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/Vibrator$MagnitudeType;

    sget-object v1, Landroid/os/Vibrator$MagnitudeType;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Vibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/Vibrator$MagnitudeType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/os/Vibrator$MagnitudeType;->$VALUES:[Landroid/os/Vibrator$MagnitudeType;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/Vibrator$MagnitudeType;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Landroid/os/Vibrator$MagnitudeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator$MagnitudeType;

    return-object v0
.end method

.method public static values()[Landroid/os/Vibrator$MagnitudeType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/os/Vibrator$MagnitudeType;->$VALUES:[Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0}, [Landroid/os/Vibrator$MagnitudeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Vibrator$MagnitudeType;

    return-object v0
.end method

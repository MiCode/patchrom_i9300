.class public final enum Landroid/sec/multiwindow/MultiWindowType;
.super Ljava/lang/Enum;
.source "MultiWindowType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/sec/multiwindow/MultiWindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/sec/multiwindow/MultiWindowType;

.field public static final enum eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

.field public static final enum eNothing:Landroid/sec/multiwindow/MultiWindowType;

.field public static final enum ePhoneWinodw:Landroid/sec/multiwindow/MultiWindowType;

.field public static final enum eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;


# instance fields
.field private final iValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Landroid/sec/multiwindow/MultiWindowType;

    const-string v1, "eNothing"

    invoke-direct {v0, v1, v2, v2}, Landroid/sec/multiwindow/MultiWindowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    .line 14
    new-instance v0, Landroid/sec/multiwindow/MultiWindowType;

    const-string v1, "eSplitWindow"

    invoke-direct {v0, v1, v3, v3}, Landroid/sec/multiwindow/MultiWindowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    .line 18
    new-instance v0, Landroid/sec/multiwindow/MultiWindowType;

    const-string v1, "eFreestyleWindow"

    invoke-direct {v0, v1, v4, v4}, Landroid/sec/multiwindow/MultiWindowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    .line 22
    new-instance v0, Landroid/sec/multiwindow/MultiWindowType;

    const-string v1, "ePhoneWinodw"

    invoke-direct {v0, v1, v5, v5}, Landroid/sec/multiwindow/MultiWindowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/sec/multiwindow/MultiWindowType;->ePhoneWinodw:Landroid/sec/multiwindow/MultiWindowType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/sec/multiwindow/MultiWindowType;

    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->ePhoneWinodw:Landroid/sec/multiwindow/MultiWindowType;

    aput-object v1, v0, v5

    sput-object v0, Landroid/sec/multiwindow/MultiWindowType;->$VALUES:[Landroid/sec/multiwindow/MultiWindowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "ival"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Landroid/sec/multiwindow/MultiWindowType;->iValue:I

    .line 32
    return-void
.end method

.method public static getValidType(I)Landroid/sec/multiwindow/MultiWindowType;
    .locals 6
    .parameter "value"

    .prologue
    .line 38
    sget-object v0, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    .line 40
    .local v0, Result:Landroid/sec/multiwindow/MultiWindowType;
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowType;->values()[Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v1

    .local v1, arr$:[Landroid/sec/multiwindow/MultiWindowType;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v1, v2

    .line 41
    .local v3, item:Landroid/sec/multiwindow/MultiWindowType;
    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v5

    if-ne v5, p0, :cond_1

    .line 42
    move-object v0, v3

    .line 47
    .end local v3           #item:Landroid/sec/multiwindow/MultiWindowType;
    :cond_0
    return-object v0

    .line 40
    .restart local v3       #item:Landroid/sec/multiwindow/MultiWindowType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/sec/multiwindow/MultiWindowType;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Landroid/sec/multiwindow/MultiWindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/MultiWindowType;

    return-object v0
.end method

.method public static values()[Landroid/sec/multiwindow/MultiWindowType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Landroid/sec/multiwindow/MultiWindowType;->$VALUES:[Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v0}, [Landroid/sec/multiwindow/MultiWindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sec/multiwindow/MultiWindowType;

    return-object v0
.end method


# virtual methods
.method public getiValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/sec/multiwindow/MultiWindowType;->iValue:I

    return v0
.end method

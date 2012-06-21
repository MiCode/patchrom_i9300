.class public Landroid/app/ViewracleOption;
.super Ljava/lang/Object;
.source "ViewracleOption.java"


# static fields
.field public static final TAG_VIEWRACLE_MODE:Ljava/lang/String; = ""

.field public static final VALUES_OPTION:Ljava/lang/String; = "Viewracle3D_Option"

.field public static final VALUE_LCD_OUTPUT:Ljava/lang/String; = "Lcd_Output"

.field public static final VALUE_RESOLUTION_OUTPUT:Ljava/lang/String; = "Resolution_Output"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getRegisteredPackageFlag(Ljava/lang/String;)I
.end method

.method public static native reserveOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native resetViewracleOption()V
.end method

.method public static native setViewracleOption(Ljava/lang/String;I[F[I[III[I[I[III)V
.end method

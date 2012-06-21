.class public Landroid/util/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final TEXT_LAYOUT_DIRECTION_LTR_DO_NOT_USE:I = 0x0

.field public static final TEXT_LAYOUT_DIRECTION_RTL_DO_NOT_USE:I = 0x1

.field private static final UNDERSCORE_CHAR:C = '_'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "Arab"

    sput-object v0, Landroid/util/LocaleUtil;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 50
    const-string v0, "Hebr"

    sput-object v0, Landroid/util/LocaleUtil;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    return v0

    .line 96
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 2
    .parameter "locale"

    .prologue
    .line 65
    if-eqz p0, :cond_2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/ICU;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, scriptSubtag:Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/util/LocaleUtil;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    .line 75
    .end local v0           #scriptSubtag:Ljava/lang/String;
    :goto_0
    return v1

    .line 69
    .restart local v0       #scriptSubtag:Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/util/LocaleUtil;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/util/LocaleUtil;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 75
    .end local v0           #scriptSubtag:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLayoutDirectionRtl()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    .local v0, currentLanguage:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 109
    .end local v0           #currentLanguage:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 110
    .restart local v0       #currentLanguage:Ljava/lang/String;
    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "iw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "he"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

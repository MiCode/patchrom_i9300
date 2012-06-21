.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface; = null

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface; = null

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FLIP_ALL_APPS:Z = true

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static final FlipFontAppList:[Ljava/lang/String; = null

.field private static FlipFontPath:Ljava/lang/String; = null

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface; = null

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final SANS_INDEX:I = 0x1

.field private static final SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field public static final SANS_SERIF:Landroid/graphics/Typeface; = null

.field public static final SERIF:Landroid/graphics/Typeface; = null

.field private static final SERIF_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Monotype"

.field private static UIFontBoldPath:Ljava/lang/String; = null

.field private static UIFontPath:Ljava/lang/String; = null

.field private static final UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/UIBoldFont.ttf"

.field private static final UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/UIFont.ttf"

.field private static lastAppInList:Z

.field private static lastAppNameString:Ljava/lang/String;

.field static sDefaults:[Landroid/graphics/Typeface;


# instance fields
.field native_instance:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 76
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 88
    sput-object v1, Landroid/graphics/Typeface;->lastAppNameString:Ljava/lang/String;

    .line 89
    sput-boolean v4, Landroid/graphics/Typeface;->lastAppInList:Z

    .line 92
    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 93
    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 95
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android"

    aput-object v2, v0, v4

    const-string v2, "com.android.apps.tag"

    aput-object v2, v0, v5

    const-string v2, "com.android.gallery3d"

    aput-object v2, v0, v6

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v7

    const/4 v2, 0x4

    const-string v3, "com.android.calculator2"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "com.android.calendar"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "com.android.camera"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "com.android.certinstaller"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "com.android.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "com.android.deskclock"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "com.android.development"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "com.android.email"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "com.android.inputmethod.latin"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "com.android.inputmethod.pinyin"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "com.android.launcher"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "com.android.launcher2"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "com.android.mms"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "com.android.music"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "com.android.musicvis"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "com.android.nfc3"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "com.android.packageinstaller"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "com.android.phone"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "com.android.protips"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "com.android.providers.applications"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "com.android.providers.calendar"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "com.android.providers.contacts"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "com.android.providers.downloads"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "com.android.providers.downloads.ui"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "com.android.providers.drm"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "com.android.providers.media"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "com.android.providers.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "com.android.providers.subscribedfeeds"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "com.android.providers.telephony"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "com.android.providers.userdictionary"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "com.android.provision"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "com.android.quicksearchbox"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "com.android.server.vpn"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "com.android.settings"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "com.android.smspush"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "com.android.soundrecorder"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "com.android.spare_parts"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "com.android.systemui"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "com.android.voicedialer"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "com.android.wallpaper"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "com.android.wallpaper.livepicker"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "com.cooliris.media"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "jp.co.omronsoft.openwnn"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "com.monotypeimaging.*"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FlipFontAppList:[Ljava/lang/String;

    move-object v0, v1

    .line 246
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 247
    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 248
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 249
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 250
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 252
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v5

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v6

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 258
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter "ni"

    .prologue
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iput p1, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 243
    return-void
.end method

.method public static SetAppTypeFace(Ljava/lang/String;)V
    .locals 1
    .parameter "sAppName"

    .prologue
    .line 497
    invoke-static {p0}, Landroid/graphics/Typeface;->isAppInFlipList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-static {}, Landroid/graphics/Typeface;->SetFlipFonts()V

    .line 508
    :cond_0
    return-void
.end method

.method private static SetFlipFonts()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 389
    const-string v3, ""

    .line 392
    .local v3, strFontPathBold:Ljava/lang/String;
    invoke-static {v7}, Landroid/graphics/Typeface;->getFontPathFlipFont(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, strFontPath:Ljava/lang/String;
    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 399
    sget-object v4, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 403
    const-string v4, ""

    sput-object v4, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 404
    const-string v4, ""

    sput-object v4, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 406
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/fonts/UIFont.ttf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 408
    const-string v4, "/system/fonts/UIFont.ttf"

    sput-object v4, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 410
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    const-string v4, "/system/fonts/UIBoldFont.ttf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    const-string v4, "/system/fonts/UIBoldFont.ttf"

    sput-object v4, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 414
    .end local v0           #f:Ljava/io/File;
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 415
    sget-object v3, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 425
    :goto_0
    sget-object v4, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 489
    :goto_1
    return-void

    .line 418
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DroidSans-Bold.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DroidSans.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 430
    :cond_3
    sput-object v2, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 443
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 444
    .local v1, iNative:I
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 445
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v10, v6}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 448
    :goto_2
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 452
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 454
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v10, v7}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 457
    :goto_3
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 461
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v6

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 462
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v6

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 463
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 466
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v7

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 467
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v7

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 468
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 471
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v8

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 472
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v8

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 473
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 476
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v9

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 477
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v4, v4, v9

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 478
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 481
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iget v1, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 482
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v5, v5, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    .line 483
    invoke-static {v1}, Landroid/graphics/Typeface;->nativeUnref(I)V

    goto/16 :goto_1

    .line 447
    :cond_4
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_2

    .line 456
    :cond_5
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v3}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->native_instance:I

    goto/16 :goto_3
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 3
    .parameter "family"
    .parameter "style"

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, ni:I
    if-eqz p0, :cond_0

    .line 193
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    .line 195
    :cond_0
    new-instance v1, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 2
    .parameter "familyName"
    .parameter "style"

    .prologue
    .line 176
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreate(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "mgr"
    .parameter "path"

    .prologue
    .line 214
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Landroid/graphics/Typeface;->nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 224
    new-instance v0, Landroid/graphics/Typeface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .parameter "path"

    .prologue
    .line 234
    new-instance v0, Landroid/graphics/Typeface;

    invoke-static {p0}, Landroid/graphics/Typeface;->nativeCreateFromFile(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface;-><init>(I)V

    return-object v0
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .parameter "style"

    .prologue
    .line 204
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static getFontPathFlipFont(I)Ljava/lang/String;
    .locals 12
    .parameter "typefaceIndex"

    .prologue
    .line 331
    const-string v9, "default"

    .line 332
    .local v9, systemFont:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    :pswitch_0
    return-object v9

    .line 336
    :pswitch_1
    const-string/jumbo v10, "persist.sys.flipfontpath"

    const-string v11, "empty"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 339
    const-string v10, "empty"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 342
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v5, file:Ljava/io/File;
    const/4 v6, 0x0

    .line 344
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 345
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 346
    .local v2, dis:Ljava/io/DataInputStream;
    const/4 v8, 0x0

    .line 349
    .local v8, string:Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 352
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 353
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 356
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 357
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 358
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 366
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v8, :cond_1

    const-string v10, "default"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 367
    :cond_1
    const-string v9, "default"

    goto :goto_0

    .line 359
    :catch_0
    move-exception v4

    .line 360
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    const-string v8, "default"

    .line 364
    goto :goto_1

    .line 361
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 362
    .local v4, e:Ljava/io/IOException;
    :goto_3
    const-string v8, "default"

    .line 363
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 369
    .end local v4           #e:Ljava/io/IOException;
    :cond_2
    move-object v9, v8

    .line 370
    const-string/jumbo v10, "persist.sys.flipfontpath"

    invoke-static {v10, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 359
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isAppInFlipList(Ljava/lang/String;)Z
    .locals 1
    .parameter "appNameString"

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromFile(Ljava/lang/String;)I
.end method

.method private static native nativeCreateFromTypeface(II)I
.end method

.method private static native nativeGetStyle(I)I
.end method

.method private static native nativeUnref(I)V
.end method

.method public static native setGammaForText(FF)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 261
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 262
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeUnref(I)V

    .line 263
    return-void
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Typeface;->nativeGetStyle(I)I

    move-result v0

    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$HyperText;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$TextPos;,
        Landroid/media/TimedText$CharPos;,
        Landroid/media/TimedText$Text;
    }
.end annotation


# static fields
.field private static final FIRST_PRIVATE_KEY:I = 0x65

.field private static final FIRST_PUBLIC_KEY:I = 0x1

.field public static final KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field public static final KEY_DISPLAY_FLAGS:I = 0x1

.field private static final KEY_END_CHAR:I = 0x68

.field private static final KEY_FONT_ID:I = 0x69

.field private static final KEY_FONT_SIZE:I = 0x6a

.field private static final KEY_GLOBAL_SETTING:I = 0x65

.field public static final KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final KEY_LOCAL_SETTING:I = 0x66

.field public static final KEY_SCROLL_DELAY:I = 0x5

.field private static final KEY_START_CHAR:I = 0x67

.field public static final KEY_START_TIME:I = 0x7

.field public static final KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field public static final KEY_STRUCT_FONT_LIST:I = 0x9

.field public static final KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field public static final KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field public static final KEY_STRUCT_JUSTIFICATION:I = 0xf

.field public static final KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field public static final KEY_STRUCT_STYLE_LIST:I = 0xd

.field public static final KEY_STRUCT_TEXT:I = 0x10

.field public static final KEY_STRUCT_TEXT_POS:I = 0xe

.field public static final KEY_STYLE_FLAGS:I = 0x2

.field private static final KEY_TEXT_COLOR_RGBA:I = 0x6b

.field public static final KEY_TEXT_INDEX:I = 0x11

.field public static final KEY_WRAP_TEXT:I = 0x6

.field private static final LAST_PRIVATE_KEY:I = 0x6b

.field private static final LAST_PUBLIC_KEY:I = 0x11

.field private static final TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private mBackgroundColorRGBA:I

.field private mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayFlags:I

.field private mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlightColorRGBA:I

.field private mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private mJustification:Landroid/media/TimedText$Justification;

.field private mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mParcel:Landroid/os/Parcel;

.field private mScrollDelay:I

.field private mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private mTextPos:Landroid/media/TimedText$TextPos;

.field private mTextStruct:Landroid/media/TimedText$Text;

.field private mWrapText:I


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 311
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    .line 78
    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 79
    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 80
    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 81
    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 82
    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    .line 84
    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 85
    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 86
    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 87
    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 88
    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 89
    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 312
    iget-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 314
    invoke-direct {p0}, Landroid/media/TimedText;->parseParcel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parseParcel() fails"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    return-void
.end method

.method private parseParcel()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 326
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 327
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-nez v7, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v6

    .line 334
    :cond_1
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 335
    .local v4, textType:I
    const/16 v7, 0x11

    if-ne v4, v7, :cond_3

    .line 336
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .local v2, mTextIndex:I
    iget-object v7, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 347
    .end local v2           #mTextIndex:I
    .local v5, type:I
    :goto_1
    const/16 v7, 0x66

    if-ne v5, v7, :cond_4

    .line 348
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 349
    const/4 v7, 0x7

    if-ne v5, v7, :cond_0

    .line 352
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .local v1, mStartTimeMs:I
    iget-object v7, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 356
    const/16 v7, 0x10

    if-ne v5, v7, :cond_0

    .line 360
    new-instance v7, Landroid/media/TimedText$Text;

    invoke-direct {v7, p0}, Landroid/media/TimedText$Text;-><init>(Landroid/media/TimedText;)V

    iput-object v7, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    .line 361
    iget-object v7, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/media/TimedText$Text;->textLen:I

    .line 363
    iget-object v7, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    iput-object v8, v7, Landroid/media/TimedText$Text;->text:[B

    .line 364
    iget-object v7, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/media/TimedText;->mTextStruct:Landroid/media/TimedText$Text;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v1           #mStartTimeMs:I
    :cond_2
    :goto_2
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_7

    .line 372
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .local v0, key:I
    invoke-virtual {p0, v0}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 374
    const-string v7, "TimedText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid timed text key found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 343
    .end local v0           #key:I
    .end local v5           #type:I
    :cond_3
    move v5, v4

    .restart local v5       #type:I
    goto :goto_1

    .line 366
    :cond_4
    const/16 v7, 0x65

    if-eq v5, v7, :cond_2

    .line 367
    const-string v7, "TimedText"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid timed text key found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 378
    .restart local v0       #key:I
    :cond_5
    const/4 v3, 0x0

    .line 380
    .local v3, object:Ljava/lang/Object;
    packed-switch v0, :pswitch_data_0

    .line 463
    .end local v3           #object:Ljava/lang/Object;
    :goto_3
    :pswitch_0
    if-eqz v3, :cond_2

    .line 464
    iget-object v7, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 465
    iget-object v7, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_6
    iget-object v7, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 382
    .restart local v3       #object:Ljava/lang/Object;
    :pswitch_1
    invoke-direct {p0}, Landroid/media/TimedText;->readStyle()V

    .line 383
    iget-object v3, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 384
    .local v3, object:Ljava/util/List;
    goto :goto_3

    .line 387
    .local v3, object:Ljava/lang/Object;
    :pswitch_2
    invoke-direct {p0}, Landroid/media/TimedText;->readFont()V

    .line 388
    iget-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 389
    .local v3, object:Ljava/util/List;
    goto :goto_3

    .line 392
    .local v3, object:Ljava/lang/Object;
    :pswitch_3
    invoke-direct {p0}, Landroid/media/TimedText;->readHighlight()V

    .line 393
    iget-object v3, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 394
    .local v3, object:Ljava/util/List;
    goto :goto_3

    .line 397
    .local v3, object:Ljava/lang/Object;
    :pswitch_4
    invoke-direct {p0}, Landroid/media/TimedText;->readKaraoke()V

    .line 398
    iget-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 399
    .local v3, object:Ljava/util/List;
    goto :goto_3

    .line 402
    .local v3, object:Ljava/lang/Object;
    :pswitch_5
    invoke-direct {p0}, Landroid/media/TimedText;->readHyperText()V

    .line 403
    iget-object v3, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 405
    .local v3, object:Ljava/util/List;
    goto :goto_3

    .line 408
    .local v3, object:Ljava/lang/Object;
    :pswitch_6
    invoke-direct {p0}, Landroid/media/TimedText;->readBlinkingText()V

    .line 409
    iget-object v3, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 411
    .local v3, object:Ljava/util/List;
    goto :goto_3

    .line 414
    .local v3, object:Ljava/lang/Object;
    :pswitch_7
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/media/TimedText;->mWrapText:I

    .line 415
    iget v7, p0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 416
    .local v3, object:Ljava/lang/Integer;
    goto :goto_3

    .line 419
    .local v3, object:Ljava/lang/Object;
    :pswitch_8
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    .line 420
    iget v7, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 421
    .local v3, object:Ljava/lang/Integer;
    goto :goto_3

    .line 424
    .local v3, object:Ljava/lang/Object;
    :pswitch_9
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/media/TimedText;->mDisplayFlags:I

    .line 425
    iget v7, p0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 426
    .local v3, object:Ljava/lang/Integer;
    goto :goto_3

    .line 429
    .local v3, object:Ljava/lang/Object;
    :pswitch_a
    new-instance v7, Landroid/media/TimedText$Justification;

    invoke-direct {v7, p0}, Landroid/media/TimedText$Justification;-><init>(Landroid/media/TimedText;)V

    iput-object v7, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 431
    iget-object v7, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/media/TimedText$Justification;->horizontalJustification:I

    .line 432
    iget-object v7, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/media/TimedText$Justification;->verticalJustification:I

    .line 434
    iget-object v3, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    .line 435
    .local v3, object:Landroid/media/TimedText$Justification;
    goto/16 :goto_3

    .line 438
    .local v3, object:Ljava/lang/Object;
    :pswitch_b
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    .line 439
    iget v7, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 440
    .local v3, object:Ljava/lang/Integer;
    goto/16 :goto_3

    .line 443
    .local v3, object:Ljava/lang/Object;
    :pswitch_c
    new-instance v7, Landroid/media/TimedText$TextPos;

    invoke-direct {v7, p0}, Landroid/media/TimedText$TextPos;-><init>(Landroid/media/TimedText;)V

    iput-object v7, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    .line 445
    iget-object v7, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/media/TimedText$TextPos;->top:I

    .line 446
    iget-object v7, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/media/TimedText$TextPos;->left:I

    .line 447
    iget-object v7, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/media/TimedText$TextPos;->bottom:I

    .line 448
    iget-object v7, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    iget-object v8, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v7, Landroid/media/TimedText$TextPos;->right:I

    .line 450
    iget-object v3, p0, Landroid/media/TimedText;->mTextPos:Landroid/media/TimedText$TextPos;

    .line 451
    .local v3, object:Landroid/media/TimedText$TextPos;
    goto/16 :goto_3

    .line 454
    .local v3, object:Ljava/lang/Object;
    :pswitch_d
    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/media/TimedText;->mScrollDelay:I

    .line 455
    iget v7, p0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 456
    .local v3, object:Ljava/lang/Integer;
    goto/16 :goto_3

    .line 471
    .end local v0           #key:I
    .end local v3           #object:Ljava/lang/Integer;
    :cond_7
    iget-object v6, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 472
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_c
        :pswitch_a
    .end packed-switch
.end method

.method private readBlinkingText()V
    .locals 2

    .prologue
    .line 615
    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, p0}, Landroid/media/TimedText$CharPos;-><init>(Landroid/media/TimedText;)V

    .line 617
    .local v0, blinkingPos:Landroid/media/TimedText$CharPos;
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->startChar:I

    .line 618
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->endChar:I

    .line 620
    iget-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    .line 623
    :cond_0
    iget-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    return-void
.end method

.method private readFont()V
    .locals 7

    .prologue
    .line 534
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 536
    .local v0, entryCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 537
    new-instance v1, Landroid/media/TimedText$Font;

    invoke-direct {v1, p0}, Landroid/media/TimedText$Font;-><init>(Landroid/media/TimedText;)V

    .line 539
    .local v1, font:Landroid/media/TimedText$Font;
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v1, Landroid/media/TimedText$Font;->ID:I

    .line 540
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 542
    .local v3, nameLen:I
    iget-object v5, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 543
    .local v4, text:[B
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, v1, Landroid/media/TimedText$Font;->name:Ljava/lang/String;

    .line 545
    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 546
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    .line 548
    :cond_0
    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v1           #font:Landroid/media/TimedText$Font;
    .end local v3           #nameLen:I
    .end local v4           #text:[B
    :cond_1
    return-void
.end method

.method private readHighlight()V
    .locals 2

    .prologue
    .line 556
    new-instance v0, Landroid/media/TimedText$CharPos;

    invoke-direct {v0, p0}, Landroid/media/TimedText$CharPos;-><init>(Landroid/media/TimedText;)V

    .line 558
    .local v0, pos:Landroid/media/TimedText$CharPos;
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->startChar:I

    .line 559
    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/media/TimedText$CharPos;->endChar:I

    .line 561
    iget-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    .line 564
    :cond_0
    iget-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    return-void
.end method

.method private readHyperText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 592
    new-instance v1, Landroid/media/TimedText$HyperText;

    invoke-direct {v1, p0}, Landroid/media/TimedText$HyperText;-><init>(Landroid/media/TimedText;)V

    .line 594
    .local v1, hyperText:Landroid/media/TimedText$HyperText;
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/media/TimedText$HyperText;->startChar:I

    .line 595
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Landroid/media/TimedText$HyperText;->endChar:I

    .line 597
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .local v2, len:I
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 599
    .local v3, url:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Landroid/media/TimedText$HyperText;->URL:Ljava/lang/String;

    .line 601
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 603
    .local v0, alt:[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v1, Landroid/media/TimedText$HyperText;->altString:Ljava/lang/String;

    .line 605
    iget-object v4, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 606
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    .line 608
    :cond_0
    iget-object v4, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    return-void
.end method

.method private readKaraoke()V
    .locals 4

    .prologue
    .line 571
    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 573
    .local v0, entryCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 574
    new-instance v2, Landroid/media/TimedText$Karaoke;

    invoke-direct {v2, p0}, Landroid/media/TimedText$Karaoke;-><init>(Landroid/media/TimedText;)V

    .line 576
    .local v2, kara:Landroid/media/TimedText$Karaoke;
    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->startTimeMs:I

    .line 577
    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->endTimeMs:I

    .line 578
    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->startChar:I

    .line 579
    iget-object v3, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/media/TimedText$Karaoke;->endChar:I

    .line 581
    iget-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 582
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    .line 584
    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    .end local v2           #kara:Landroid/media/TimedText$Karaoke;
    :cond_1
    return-void
.end method

.method private readStyle()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 479
    new-instance v3, Landroid/media/TimedText$Style;

    invoke-direct {v3, p0}, Landroid/media/TimedText$Style;-><init>(Landroid/media/TimedText;)V

    .line 480
    .local v3, style:Landroid/media/TimedText$Style;
    const/4 v0, 0x0

    .line 482
    .local v0, endOfStyle:Z
    :goto_0
    if-nez v0, :cond_3

    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lez v4, :cond_3

    .line 483
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .local v2, key:I
    sparse-switch v2, :sswitch_data_0

    .line 517
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    iget-object v7, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 518
    const/4 v0, 0x1

    goto :goto_0

    .line 486
    :sswitch_0
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->startChar:I

    goto :goto_0

    .line 490
    :sswitch_1
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->endChar:I

    goto :goto_0

    .line 494
    :sswitch_2
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->fontID:I

    goto :goto_0

    .line 498
    :sswitch_3
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 501
    .local v1, flags:I
    rem-int/lit8 v4, v1, 0x2

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_1
    iput-boolean v4, v3, Landroid/media/TimedText$Style;->isBold:Z

    .line 502
    rem-int/lit8 v4, v1, 0x4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_1

    move v4, v5

    :goto_2
    iput-boolean v4, v3, Landroid/media/TimedText$Style;->isItalic:Z

    .line 503
    div-int/lit8 v4, v1, 0x4

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_3
    iput-boolean v4, v3, Landroid/media/TimedText$Style;->isUnderlined:Z

    goto :goto_0

    :cond_0
    move v4, v6

    .line 501
    goto :goto_1

    :cond_1
    move v4, v6

    .line 502
    goto :goto_2

    :cond_2
    move v4, v6

    .line 503
    goto :goto_3

    .line 507
    .end local v1           #flags:I
    :sswitch_4
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->fontSize:I

    goto :goto_0

    .line 511
    :sswitch_5
    iget-object v4, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/media/TimedText$Style;->colorRGBA:I

    goto :goto_0

    .line 524
    .end local v2           #key:I
    :cond_3
    iget-object v4, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez v4, :cond_4

    .line 525
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    .line 527
    :cond_4
    iget-object v4, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    return-void

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x1

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidKey(I)Z
    .locals 2
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 632
    if-lt p1, v0, :cond_0

    const/16 v1, 0x11

    if-le p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x65

    if-lt p1, v1, :cond_1

    const/16 v1, 0x6b

    if-le p1, v1, :cond_2

    .line 634
    :cond_1
    const/4 v0, 0x0

    .line 636
    :cond_2
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

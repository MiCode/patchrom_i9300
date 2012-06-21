.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 445
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .locals 7
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 484
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 487
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 489
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 492
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_0
    return-void

    .line 492
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 454
    .local v6, thumbUri:Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 455
    .local v4, thumbId:J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, filePath:Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 457
    const-string/jumbo v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 458
    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 469
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v4           #thumbId:J
    :goto_0
    return-object v0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 464
    .local v1, ex:Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t open thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 466
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to allocate memory for thumbnail "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 512
    const/4 v13, 0x0

    .line 513
    .local v13, bitmap:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 517
    .local v17, filePath:Ljava/lang/String;
    new-instance v22, Landroid/media/MiniThumbFile;

    if-eqz p8, :cond_5

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 519
    .local v22, thumbFile:Landroid/media/MiniThumbFile;
    const/4 v14, 0x0

    .line 520
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "thumbnails"

    const-string/jumbo v7, "media"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 524
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v18

    .line 526
    .local v18, magic:J
    const-wide/16 v20, 0x0

    .line 527
    .local v20, mini_thumb_magic:J
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v7, "mini_thumb_magic"

    aput-object v7, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 528
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 531
    :cond_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_1
    const-wide/16 v7, 0x0

    cmp-long v3, v18, v7

    if-eqz v3, :cond_a

    cmp-long v3, v18, v20

    if-nez v3, :cond_a

    .line 533
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_7

    .line 534
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_2

    .line 536
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 538
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_3

    .line 539
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 540
    if-nez v13, :cond_3

    .line 541
    const-string v3, "MediaStore"

    const-string v7, "couldn\'t decode byte array."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_4
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v22, 0x0

    move-object v3, v13

    .line 625
    .end local v18           #magic:J
    .end local v20           #mini_thumb_magic:J
    :goto_1
    return-object v3

    .line 517
    .end local v4           #uri:Landroid/net/Uri;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v22           #thumbFile:Landroid/media/MiniThumbFile;
    :cond_5
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 544
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v18       #magic:J
    .restart local v20       #mini_thumb_magic:J
    .restart local v22       #thumbFile:Landroid/media/MiniThumbFile;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 617
    .end local v18           #magic:J
    .end local v20           #mini_thumb_magic:J
    :catch_0
    move-exception v16

    .line 618
    .local v16, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_4
    const-string v3, "MediaStore"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 620
    if-eqz v14, :cond_6

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v22, 0x0

    .end local v16           #ex:Landroid/database/sqlite/SQLiteException;
    :goto_2
    move-object v3, v13

    .line 625
    goto :goto_1

    .line 546
    .restart local v18       #magic:J
    .restart local v20       #mini_thumb_magic:J
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_a

    .line 547
    if-eqz p8, :cond_9

    :try_start_5
    const-string/jumbo v15, "video_id="

    .line 548
    .local v15, column:Ljava/lang/String;
    :goto_3
    sget-object v7, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 549
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 550
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v13

    .line 551
    if-eqz v13, :cond_a

    .line 620
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_8
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v22, 0x0

    move-object v3, v13

    goto :goto_1

    .line 547
    .end local v15           #column:Ljava/lang/String;
    :cond_9
    :try_start_6
    const-string/jumbo v15, "image_id="

    goto :goto_3

    .line 558
    :cond_a
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "blocking"

    const-string v7, "1"

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 561
    .local v6, blockingUri:Landroid/net/Uri;
    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_b
    sget-object v7, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v14

    .line 564
    if-nez v14, :cond_d

    const/4 v3, 0x0

    .line 620
    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_c
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 567
    :cond_d
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_17

    .line 569
    const/4 v3, 0x1

    :try_start_7
    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "mini_thumb_magic"

    aput-object v5, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 570
    if-eqz v14, :cond_e

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 571
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 573
    :cond_e
    if-eqz v14, :cond_f

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 574
    :cond_f
    const-wide/16 v7, 0x0

    cmp-long v3, v20, v7

    if-eqz v3, :cond_12

    .line 575
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v18

    .line 576
    cmp-long v3, v18, v20

    if-nez v3, :cond_12

    .line 577
    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 578
    :try_start_8
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez v3, :cond_10

    .line 579
    const/16 v3, 0x2710

    new-array v3, v3, [B

    sput-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 581
    :cond_10
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object v3

    if-eqz v3, :cond_11

    .line 582
    sget-object v3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v8, v8

    invoke-static {v3, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 583
    if-nez v13, :cond_11

    .line 584
    const-string v3, "MediaStore"

    const-string v7, "couldn\'t decode byte array."

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_11
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 599
    :cond_12
    :goto_4
    if-nez v13, :cond_1b

    .line 600
    :try_start_9
    const-string v3, "MediaStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create the thumbnail in memory: origId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", kind="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", isVideo="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    if-nez v17, :cond_1a

    .line 604
    if-eqz v14, :cond_13

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 605
    :cond_13
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 606
    if-eqz v14, :cond_14

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v3

    if-nez v3, :cond_19

    .line 607
    :cond_14
    const/4 v3, 0x0

    .line 620
    if-eqz v14, :cond_15

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_15
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 587
    :catchall_1
    move-exception v3

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0

    .line 620
    .end local v6           #blockingUri:Landroid/net/Uri;
    .end local v18           #magic:J
    .end local v20           #mini_thumb_magic:J
    :catchall_2
    move-exception v3

    if-eqz v14, :cond_16

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_16
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v22, 0x0

    throw v3

    .line 590
    .restart local v6       #blockingUri:Landroid/net/Uri;
    .restart local v18       #magic:J
    .restart local v20       #mini_thumb_magic:J
    :cond_17
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_18

    .line 591
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 592
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-static {v14, v0, v1, v2}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    goto :goto_4

    .line 595
    :cond_18
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported kind: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 609
    :cond_19
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 611
    :cond_1a
    if-eqz p8, :cond_1d

    .line 612
    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    move-result-object v13

    .line 620
    :cond_1b
    :goto_5
    if-eqz v14, :cond_1c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 622
    :cond_1c
    invoke-virtual/range {v22 .. v22}, Landroid/media/MiniThumbFile;->deactivate()V

    .line 623
    const/16 v22, 0x0

    .line 624
    goto/16 :goto_2

    .line 614
    :cond_1d
    :try_start_d
    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0

    move-result-object v13

    goto :goto_5
.end method

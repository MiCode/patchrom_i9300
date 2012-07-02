.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field private iconHeight:I

.field private iconWidth:I

.field private imageHeight:I

.field private imageWidth:I

.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private mImageTime:J

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationId:I

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 10
    .parameter "context"
    .parameter "data"
    .parameter "nManager"
    .parameter "nId"

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 119
    .local v4, r:Landroid/content/res/Resources;
    const-string v6, "ro.build.type"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    .line 125
    :goto_0
    sget-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SaveImageInBackgroundTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SaveImageInBackgroundTask\'s SCREENSHOT_NOTIFICATION_ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 128
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    iget-wide v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, imageDate:Ljava/lang/String;
    sget-object v6, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, imageDir:Ljava/lang/String;
    const-string v6, "Screenshot_%s.png"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 132
    const-string v6, "%s/%s/%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const-string v9, "Screenshots"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 135
    sget-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "SaveImageInBackgroundTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SaveImageInBackgroundTask\'s mImageFilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    iget-object v6, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageWidth:I

    .line 139
    iget-object v6, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageHeight:I

    .line 140
    iget v6, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconWidth:I

    .line 141
    iget v6, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iput v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconHeight:I

    .line 142
    iget v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageWidth:I

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageHeight:I

    if-le v6, v7, :cond_3

    .line 143
    iget v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageWidth:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconWidth:I

    .line 147
    :goto_1
    iget-object v6, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconWidth:I

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconHeight:I

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 148
    .local v5, rawIcon:Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconWidth:I

    iget v7, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconHeight:I

    iget v8, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iget v8, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    iget v9, p2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    invoke-static {v5, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, croppedIcon:Landroid/graphics/Bitmap;
    sget-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    sput-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 153
    iput p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 154
    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 155
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f0a003b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v6, :cond_5

    const-string v6, " "

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f0a003c

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f0a003d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f020081

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 162
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 163
    .local v3, n:Landroid/app/Notification;
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 164
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, p4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 169
    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 171
    return-void

    .line 122
    .end local v0           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v1           #imageDate:Ljava/lang/String;
    .end local v2           #imageDir:Ljava/lang/String;
    .end local v3           #n:Landroid/app/Notification;
    .end local v5           #rawIcon:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    goto/16 :goto_0

    .line 145
    .restart local v1       #imageDate:Ljava/lang/String;
    .restart local v2       #imageDir:Ljava/lang/String;
    :cond_3
    iget v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageHeight:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->iconHeight:I

    goto/16 :goto_1

    .line 152
    .restart local v0       #croppedIcon:Landroid/graphics/Bitmap;
    .restart local v5       #rawIcon:Landroid/graphics/Bitmap;
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 155
    :cond_5
    const-string v6, ""

    goto :goto_3
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 20
    .parameter "params"

    .prologue
    .line 175
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v17, 0x0

    .line 253
    :goto_0
    return-object v17

    .line 179
    :cond_0
    const/16 v17, -0x2

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 181
    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 182
    .local v4, context:Landroid/content/Context;
    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 183
    .local v7, image:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 184
    .local v11, out:Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 187
    .local v9, imageFile:Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 188
    .end local v9           #imageFile:Ljava/io/File;
    .local v10, imageFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 189
    .local v8, imageDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_1

    .line 190
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 192
    :cond_1
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 194
    .end local v11           #out:Ljava/io/OutputStream;
    .local v12, out:Ljava/io/OutputStream;
    const/16 v17, 0x1

    :try_start_2
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 195
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 198
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v16, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 200
    .local v13, resolver:Landroid/content/ContentResolver;
    const-string v17, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v17, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v17, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v17, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string v17, "date_added"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v17, "date_modified"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    const-string v17, "mime_type"

    const-string v18, "image/png"

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v17, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageHeight:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v17, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->imageWidth:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v17, "_size"

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    sget-object v17, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 216
    .local v14, uri:Landroid/net/Uri;
    const/16 v17, 0x0

    aget-object v17, p1, v17

    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 217
    const/16 v17, 0x0

    aget-object v17, p1, v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 220
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.android.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v5, copyIntent:Landroid/content/Intent;
    const-string v17, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 225
    .local v15, uriString:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v17, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v3, actionIntent:Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    new-instance v2, Landroid/content/Intent;

    const-string v17, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    .local v2, action:Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 244
    .end local v2           #action:Landroid/content/Intent;
    .end local v3           #actionIntent:Landroid/content/Intent;
    .end local v5           #copyIntent:Landroid/content/Intent;
    .end local v13           #resolver:Landroid/content/ContentResolver;
    .end local v14           #uri:Landroid/net/Uri;
    .end local v15           #uriString:Ljava/lang/String;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    if-eqz v12, :cond_6

    .line 246
    :try_start_3
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v9, v10

    .end local v10           #imageFile:Ljava/io/File;
    .restart local v9       #imageFile:Ljava/io/File;
    move-object v11, v12

    .line 253
    .end local v8           #imageDir:Ljava/io/File;
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    :cond_3
    :goto_2
    const/16 v17, 0x0

    aget-object v17, p1, v17

    goto/16 :goto_0

    .line 231
    .end local v9           #imageFile:Ljava/io/File;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v8       #imageDir:Ljava/io/File;
    .restart local v10       #imageFile:Ljava/io/File;
    .restart local v12       #out:Ljava/io/OutputStream;
    :cond_4
    :try_start_4
    const-string v17, "SaveImageInBackgroundTask"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Fail to create capture image file ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v17, 0x0

    aget-object v17, p1, v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 234
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 235
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 238
    :catch_0
    move-exception v6

    move-object v9, v10

    .end local v10           #imageFile:Ljava/io/File;
    .restart local v9       #imageFile:Ljava/io/File;
    move-object v11, v12

    .line 241
    .end local v8           #imageDir:Ljava/io/File;
    .end local v12           #out:Ljava/io/OutputStream;
    .local v6, e:Ljava/lang/Exception;
    .restart local v11       #out:Ljava/io/OutputStream;
    :goto_3
    const/16 v17, 0x0

    :try_start_5
    aget-object v17, p1, v17

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 242
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    if-eqz v11, :cond_3

    .line 246
    :try_start_6
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 247
    :catch_1
    move-exception v6

    .line 248
    const-string v17, "SaveImageInBackgroundTask"

    const-string v18, "IOException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 247
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #imageFile:Ljava/io/File;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v8       #imageDir:Ljava/io/File;
    .restart local v10       #imageFile:Ljava/io/File;
    .restart local v12       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v6

    .line 248
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v17, "SaveImageInBackgroundTask"

    const-string v18, "IOException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    .end local v10           #imageFile:Ljava/io/File;
    .restart local v9       #imageFile:Ljava/io/File;
    move-object v11, v12

    .line 249
    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 244
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #imageDir:Ljava/io/File;
    :catchall_0
    move-exception v17

    :goto_4
    if-eqz v11, :cond_5

    .line 246
    :try_start_7
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 249
    :cond_5
    :goto_5
    throw v17

    .line 247
    :catch_3
    move-exception v6

    .line 248
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v18, "SaveImageInBackgroundTask"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 244
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #imageFile:Ljava/io/File;
    .restart local v10       #imageFile:Ljava/io/File;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10           #imageFile:Ljava/io/File;
    .restart local v9       #imageFile:Ljava/io/File;
    goto :goto_4

    .end local v9           #imageFile:Ljava/io/File;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v8       #imageDir:Ljava/io/File;
    .restart local v10       #imageFile:Ljava/io/File;
    .restart local v12       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v17

    move-object v9, v10

    .end local v10           #imageFile:Ljava/io/File;
    .restart local v9       #imageFile:Ljava/io/File;
    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 238
    .end local v8           #imageDir:Ljava/io/File;
    :catch_4
    move-exception v6

    goto :goto_3

    .end local v9           #imageFile:Ljava/io/File;
    .restart local v10       #imageFile:Ljava/io/File;
    :catch_5
    move-exception v6

    move-object v9, v10

    .end local v10           #imageFile:Ljava/io/File;
    .restart local v9       #imageFile:Ljava/io/File;
    goto :goto_3

    .end local v9           #imageFile:Ljava/io/File;
    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v8       #imageDir:Ljava/io/File;
    .restart local v10       #imageFile:Ljava/io/File;
    .restart local v12       #out:Ljava/io/OutputStream;
    :cond_6
    move-object v9, v10

    .end local v10           #imageFile:Ljava/io/File;
    .restart local v9       #imageFile:Ljava/io/File;
    move-object v11, v12

    .end local v12           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    .line 258
    sget-boolean v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SaveImageInBackgroundTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute params result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v3, :cond_1

    .line 261
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 282
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 283
    return-void

    .line 264
    :cond_1
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 267
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, launchIntent:Landroid/content/Intent;
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v4, "image/png"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v4, 0x7f0a003e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0a003f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 278
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 279
    .local v1, n:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, -0x21

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 280
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method

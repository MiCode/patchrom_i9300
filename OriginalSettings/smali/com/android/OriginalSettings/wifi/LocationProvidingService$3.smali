.class Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;
.super Ljava/lang/Object;
.source "LocationProvidingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/LocationProvidingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 260
    const-string v1, "LocationProvidingService"

    const-string v2, "Compare Thread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const/4 v2, 0x0

    #setter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$202(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Z)Z

    .line 262
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const/4 v2, 0x0

    #setter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$302(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Z)Z

    .line 263
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    if-eqz v1, :cond_3

    .line 266
    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 267
    .local v7, c1:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 268
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 272
    .local v9, lat:D
    const/16 v1, 0x8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    .line 273
    .local v11, log:D
    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitude in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longitude in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    invoke-virtual {v1, v9, v10}, Landroid/location/Location;->setLatitude(D)V

    .line 277
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    invoke-virtual {v1, v11, v12}, Landroid/location/Location;->setLongitude(D)V

    .line 278
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->loc:Landroid/location/Location;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locat:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->results:I

    .line 279
    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget v3, v3, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->results:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->results:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const/4 v2, 0x1

    #setter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$302(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Z)Z

    .line 283
    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is location Available in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->locAvailable:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$300(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$400(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    .end local v7           #c1:Landroid/database/Cursor;
    .end local v9           #lat:D
    .end local v11           #log:D
    :cond_0
    :goto_1
    return-void

    .line 288
    .restart local v7       #c1:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 290
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 294
    .end local v7           #c1:Landroid/database/Cursor;
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 295
    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 296
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 299
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->CID:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    const/4 v2, 0x1

    #setter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$202(Lcom/android/OriginalSettings/wifi/LocationProvidingService;Z)Z

    .line 301
    const-string v1, "LocationProvidingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is Cell Available in database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->cellAvailable:Z
    invoke-static {v3}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$200(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$400(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 305
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 307
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 310
    .end local v6           #c:Landroid/database/Cursor;
    :cond_6
    sget-object v1, Lcom/android/OriginalSettings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 311
    .local v8, c2:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_8

    .line 314
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 315
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->wifiHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/LocationProvidingService$3;->this$0:Lcom/android/OriginalSettings/wifi/LocationProvidingService;

    #getter for: Lcom/android/OriginalSettings/wifi/LocationProvidingService;->UpdateWifi:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/LocationProvidingService;->access$400(Lcom/android/OriginalSettings/wifi/LocationProvidingService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 318
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 320
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

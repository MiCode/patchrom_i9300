.class Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WFDSourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WFDSourceService;


# direct methods
.method private constructor <init>(Lcom/samsung/wfd/WFDSourceService;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;->this$0:Lcom/samsung/wfd/WFDSourceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, action:Ljava/lang/String;
    const-string v7, "WFDSourceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "intent recieved "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v7, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 302
    const-string v7, "Control"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, strSessionControl:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string/jumbo v7, "terminate"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 362
    .end local v5           #strSessionControl:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 307
    .restart local v5       #strSessionControl:Ljava/lang/String;
    :cond_1
    const-string/jumbo v7, "res"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 308
    .local v3, resolution:I
    const-string v7, "3D"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, str3d:Ljava/lang/String;
    const-string v7, "WFDSourceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Recvd resolution from app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 3d:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, dim_mode:I
    if-eqz v4, :cond_2

    const-string v7, "Yes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 312
    const/4 v1, 0x1

    .line 319
    :goto_1
    const/4 v6, 0x0

    .line 320
    .local v6, width:I
    const/4 v2, 0x0

    .line 322
    .local v2, height:I
    and-int/lit8 v7, v3, 0x1

    if-eqz v7, :cond_3

    .line 323
    const/16 v6, 0x280

    .line 324
    const/16 v2, 0x1e0

    .line 346
    :goto_2
    const-string v7, "WFDSourceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choosing the width:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " height:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v10, v6, v2, v1}, Lcom/samsung/wfd/WFDNative;->changeParams(IIII)Z

    goto :goto_0

    .line 314
    .end local v2           #height:I
    .end local v6           #width:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 325
    .restart local v2       #height:I
    .restart local v6       #width:I
    :cond_3
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_4

    .line 326
    const/16 v6, 0x2d0

    .line 327
    const/16 v2, 0x1e0

    goto :goto_2

    .line 328
    :cond_4
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_5

    .line 329
    const/16 v6, 0x2d0

    .line 330
    const/16 v2, 0x240

    goto :goto_2

    .line 331
    :cond_5
    and-int/lit8 v7, v3, 0x8

    if-eqz v7, :cond_6

    .line 332
    const/16 v6, 0x500

    .line 333
    const/16 v2, 0x2d0

    goto :goto_2

    .line 334
    :cond_6
    and-int/lit8 v7, v3, 0x10

    if-eqz v7, :cond_7

    .line 335
    const/16 v6, 0x780

    .line 336
    const/16 v2, 0x438

    goto :goto_2

    .line 337
    :cond_7
    and-int/lit8 v7, v3, 0x20

    if-eqz v7, :cond_8

    .line 338
    const/16 v6, 0x320

    .line 339
    const/16 v2, 0x258

    goto :goto_2

    .line 342
    :cond_8
    const/16 v6, 0x500

    .line 343
    const/16 v2, 0x2d0

    goto :goto_2

    .line 349
    .end local v1           #dim_mode:I
    .end local v2           #height:I
    .end local v3           #resolution:I
    .end local v4           #str3d:Ljava/lang/String;
    .end local v5           #strSessionControl:Ljava/lang/String;
    .end local v6           #width:I
    :cond_9
    const-string v7, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 350
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_0

    .line 352
    :cond_a
    const-string v7, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    invoke-static {v10}, Lcom/samsung/wfd/WFDNative;->sendUpdateUserInput(I)Z

    goto/16 :goto_0
.end method

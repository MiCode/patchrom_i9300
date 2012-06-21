.class Lcom/android/server/DrmEventService$6;
.super Ljava/lang/Object;
.source "DrmEventService.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method constructor <init>(Lcom/android/server/DrmEventService;)V
    .locals 0
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 11
    .parameter "drmManager"
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    .line 1299
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_0

    .line 1300
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wap push receiver:processdrmRequest In"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_0
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v7

    const/16 v8, 0x3ea

    if-ne v7, v8, :cond_11

    .line 1304
    const/4 v3, 0x0

    .line 1306
    .local v3, result:Landroid/drm/DrmInfo;
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_1

    .line 1307
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wap push receiver:processdrmRequest In  1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_1
    const-string v7, "drm_info_status_object"

    invoke-virtual {p2, v7}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/drm/DrmInfoStatus;

    .line 1311
    .local v5, status:Landroid/drm/DrmInfoStatus;
    if-eqz v5, :cond_8

    iget-object v7, v5, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    if-eqz v7, :cond_8

    .line 1312
    iget-object v7, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    new-instance v8, Ljava/lang/String;

    iget-object v9, v5, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v9}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v8, v7, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    .line 1313
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_2

    .line 1314
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wap push receiver:processdrmRequest contentId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v9, v9, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_2
    iget-object v7, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v7, v7, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    if-eqz v7, :cond_b

    .line 1329
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v7, 0x9

    const-string v8, "application/vnd.oma.drm.content"

    invoke-direct {v2, v7, v8}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1330
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v7, "cid"

    iget-object v8, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v8, v8, Lcom/android/server/DrmEventService;->contentId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1332
    iget-object v7, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v7, v7, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v7, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v3

    .line 1334
    if-eqz v3, :cond_a

    .line 1335
    const-string v7, "status"

    invoke-virtual {v3, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1336
    .local v6, status_req1:Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_3

    .line 1337
    const-string v7, "DrmEventService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wap push receiver:  processRequest status is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_3
    const-string v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1340
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_4

    .line 1341
    const-string v7, "DrmEventService"

    const-string v8, "Wap push receiver: processdrmRequest Success"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_4
    const-string v7, "drm_path"

    invoke-virtual {v3, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1376
    .local v1, file_path_object:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1378
    .local v0, filePath:Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 1379
    const-string v7, "drm_path"

    invoke-virtual {v3, v7}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1386
    :cond_5
    :goto_0
    if-eqz v0, :cond_10

    .line 1387
    iget-object v7, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    iget-object v7, v7, Lcom/android/server/DrmEventService;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v7, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v4

    .line 1388
    .local v4, rightStatus:I
    if-nez v4, :cond_d

    .line 1393
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_6

    .line 1394
    const-string v7, "DrmEventService"

    const-string v8, " Rights Valid , Show Popup"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_6
    iget-object v7, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v0}, Lcom/android/server/DrmEventService;->InitializeOmaIntent(ILjava/lang/String;)V

    .line 1430
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #file_path_object:Ljava/lang/Object;
    .end local v2           #request:Landroid/drm/DrmInfoRequest;
    .end local v3           #result:Landroid/drm/DrmInfo;
    .end local v4           #rightStatus:I
    .end local v5           #status:Landroid/drm/DrmInfoStatus;
    .end local v6           #status_req1:Ljava/lang/String;
    :cond_7
    :goto_1
    return-void

    .line 1316
    .restart local v3       #result:Landroid/drm/DrmInfo;
    .restart local v5       #status:Landroid/drm/DrmInfoStatus;
    :cond_8
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 1317
    const-string v7, "DrmEventService"

    const-string v8, "Wap push receiver:processdrmRequest Fail  0"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1344
    .restart local v2       #request:Landroid/drm/DrmInfoRequest;
    .restart local v6       #status_req1:Ljava/lang/String;
    :cond_9
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 1345
    const-string v7, "DrmEventService"

    const-string v8, "Wap push receiver:processdrmRequest Fail 1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1357
    .end local v6           #status_req1:Ljava/lang/String;
    :cond_a
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 1358
    const-string v7, "DrmEventService"

    const-string v8, "Wap push receiver:processdrmRequest result is NULL "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1363
    .end local v2           #request:Landroid/drm/DrmInfoRequest;
    :cond_b
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 1364
    const-string v7, "DrmEventService"

    const-string v8, "Wap push receiver:processdrmRequest Fail  2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1382
    .restart local v0       #filePath:Ljava/lang/String;
    .restart local v1       #file_path_object:Ljava/lang/Object;
    .restart local v2       #request:Landroid/drm/DrmInfoRequest;
    .restart local v6       #status_req1:Ljava/lang/String;
    :cond_c
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_5

    .line 1383
    const-string v7, "DrmEventService"

    const-string v8, "Wap push receiver:processdrmRequest FILE Object not available"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1397
    .restart local v4       #rightStatus:I
    :cond_d
    if-ne v4, v10, :cond_f

    .line 1399
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_e

    .line 1400
    const-string v7, "DrmEventService"

    const-string v8, " Rights are not yet active: Show Popup"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_e
    iget-object v7, p0, Lcom/android/server/DrmEventService$6;->this$0:Lcom/android/server/DrmEventService;

    invoke-virtual {v7, v10, v0}, Lcom/android/server/DrmEventService;->InitializeOmaIntent(ILjava/lang/String;)V

    goto :goto_1

    .line 1410
    :cond_f
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 1411
    const-string v7, "DrmEventService"

    const-string v8, "Unknown right status. Exit"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1414
    .end local v4           #rightStatus:I
    :cond_10
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 1415
    const-string v7, "DrmEventService"

    const-string v8, "Wap push receiver: No File Path "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1426
    .end local v0           #filePath:Ljava/lang/String;
    .end local v1           #file_path_object:Ljava/lang/Object;
    .end local v2           #request:Landroid/drm/DrmInfoRequest;
    .end local v3           #result:Landroid/drm/DrmInfo;
    .end local v5           #status:Landroid/drm/DrmInfoStatus;
    .end local v6           #status_req1:Ljava/lang/String;
    :cond_11
    sget-boolean v7, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v7, :cond_7

    .line 1427
    const-string v7, "DrmEventService"

    const-string v8, "DRM PUSH RECEIVER : mimeType is not valid for WAp Push Received"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.class Lcom/sec/android/internal/ims/IMSService$17;
.super Landroid/content/BroadcastReceiver;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 3755
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$17;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3759
    const-string/jumbo v1, "vtErrorTableUpdateListener"

    .line 3760
    .local v1, FN_TAG:Ljava/lang/String;
    const-string v14, "FN_TAG Entering ---"

    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3762
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 3763
    .local v2, action:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SMSIntentAction = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3764
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const-string v15, " com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3766
    :cond_0
    const-string v5, "202"

    .line 3767
    .local v5, def_errCode:Ljava/lang/String;
    const-string v14, "IMS_ERROR_CODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .local v11, objErrCode:Ljava/lang/Object;
    move-object v7, v11

    .line 3768
    check-cast v7, Ljava/lang/String;

    .line 3770
    .local v7, errCode:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FN_TAG errCode =  ---"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3772
    const-string v6, "Reg Failure"

    .line 3773
    .local v6, def_errString:Ljava/lang/String;
    const-string v14, "IMS_ERROR_STRING"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .local v12, objErrString:Ljava/lang/Object;
    move-object v10, v12

    .line 3774
    check-cast v10, Ljava/lang/String;

    .line 3776
    .local v10, errString:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FN_TAG ErrorSTring =  ---"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3778
    if-eqz v7, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3781
    new-instance v8, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v8}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .line 3782
    .local v8, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    new-instance v9, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;

    invoke-direct {v9}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;-><init>()V

    .line 3783
    .local v9, errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/internal/ims/IMSService$17;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->access$800(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 3785
    .local v13, r1:Landroid/content/ContentResolver;
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v13, :cond_1

    .line 3787
    const-string v14, "FN_TAG DB write started_________"

    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3788
    iput-object v7, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 3789
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v4, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3790
    .local v4, dateFormat:Ljava/text/DateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 3791
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 3792
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FN_TAG Time STamp =  ---"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3793
    iput-object v10, v8, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 3794
    invoke-virtual {v9, v8, v13}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 3795
    const-string v14, "FN_TAG Insert Success ---"

    invoke-static {v14}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3801
    .end local v3           #date:Ljava/util/Date;
    .end local v4           #dateFormat:Ljava/text/DateFormat;
    .end local v8           #errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    .end local v9           #errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    .end local v13           #r1:Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

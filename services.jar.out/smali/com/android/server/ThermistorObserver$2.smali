.class Lcom/android/server/ThermistorObserver$2;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 463
    const-string v1, "frequency"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v14

    .line 464
    .local v14, frequency_eachLevels:[I
    const-string v1, "cpu_max_core"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v12

    .line 465
    .local v12, cpuMaxCore_eachLevels:[I
    const-string v1, "charging_current"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v11

    .line 466
    .local v11, charging_current_eachLevels:[Z
    const-string v1, "brightness"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v10

    .line 467
    .local v10, brightness_eachLevels:[Z
    const-string v1, "lcd_fps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v18

    .line 469
    .local v18, lcdFPS_eachLevels:[Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v1, v1, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    add-int/lit8 v19, v1, -0x1

    .line 471
    .local v19, numberOfSIOPLevels:I
    array-length v1, v14

    move/from16 v0, v19

    if-ne v1, v0, :cond_0

    array-length v1, v12

    move/from16 v0, v19

    if-ne v1, v0, :cond_0

    array-length v1, v11

    move/from16 v0, v19

    if-ne v1, v0, :cond_0

    array-length v1, v10

    move/from16 v0, v19

    if-ne v1, v0, :cond_0

    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v0, v19

    if-eq v1, v0, :cond_1

    .line 476
    :cond_0
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mSIOPLevelSetByTestApp : size of setting values is different SIOP Levels"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return-void

    .line 481
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v1

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v17

    .line 482
    .local v17, lastSIOPLevelName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1300(Lcom/android/server/ThermistorObserver;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 485
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 486
    add-int/lit8 v16, v15, 0x1

    .line 487
    .local v16, indexToSet:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v0, v1, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-object/from16 v20, v0

    new-instance v1, Lcom/android/server/ThermistorObserver$SIOPLevel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    aget v5, v14, v15

    mul-int/lit16 v5, v5, 0x3e8

    aget v6, v12, v15

    aget-boolean v7, v11, v15

    aget-boolean v8, v10, v15

    if-eqz v8, :cond_2

    const/16 v8, 0xe6

    :goto_2
    aget-boolean v9, v18, v15

    if-eqz v9, :cond_3

    const/16 v9, 0x28

    :goto_3
    invoke-direct/range {v1 .. v9}, Lcom/android/server/ThermistorObserver$SIOPLevel;-><init>(Lcom/android/server/ThermistorObserver;Ljava/lang/String;IIIZII)V

    aput-object v1, v20, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 487
    :cond_2
    const/4 v8, -0x1

    goto :goto_2

    :cond_3
    const/16 v9, 0x3c

    goto :goto_3

    .line 495
    :catch_0
    move-exception v13

    .line 496
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    .end local v13           #e:Ljava/lang/Exception;
    .end local v16           #indexToSet:I
    :cond_4
    const/4 v15, 0x0

    .line 501
    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v1, v1, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    if-ge v15, v1, :cond_5

    .line 502
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v1, v1, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v1, v1, v15

    #getter for: Lcom/android/server/ThermistorObserver$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ThermistorObserver$SIOPLevel;->access$300(Lcom/android/server/ThermistorObserver$SIOPLevel;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 507
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v1, v1, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    array-length v1, v1

    if-ne v15, v1, :cond_7

    .line 508
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "not found last SIOPLevel"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 501
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 511
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v3, v3, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ThermistorObserver;->changeState(Lcom/android/server/ThermistorObserver$SIOPLevel;Lcom/android/server/ThermistorObserver$SIOPLevel;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ThermistorObserver$2;->this$0:Lcom/android/server/ThermistorObserver;

    iget-object v2, v2, Lcom/android/server/ThermistorObserver;->mSIOPLevels:[Lcom/android/server/ThermistorObserver$SIOPLevel;

    aget-object v2, v2, v15

    #setter for: Lcom/android/server/ThermistorObserver;->mLastSIOPLevel:Lcom/android/server/ThermistorObserver$SIOPLevel;
    invoke-static {v1, v2}, Lcom/android/server/ThermistorObserver;->access$1302(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$SIOPLevel;)Lcom/android/server/ThermistorObserver$SIOPLevel;

    goto/16 :goto_0
.end method

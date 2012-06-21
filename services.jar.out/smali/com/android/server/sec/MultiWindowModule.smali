.class public Lcom/android/server/sec/MultiWindowModule;
.super Ljava/lang/Object;
.source "MultiWindowModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MultiWindowModule$RunAppList;,
        Lcom/android/server/sec/MultiWindowModule$TimerFinish;,
        Lcom/android/server/sec/MultiWindowModule$TimerRun;,
        Lcom/android/server/sec/MultiWindowModule$ResumeItem;
    }
.end annotation


# static fields
.field private static final PADDING_TILED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "AbsMultiWindowModule"

.field private static final TYPE_CASCADE:I = 0x0

.field private static final TYPE_TILED:I = 0x1


# instance fields
.field protected accelerometerRotation:I

.field protected mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

.field protected mActivityManager:Landroid/app/ActivityManager;

.field protected mAppList:Lcom/android/server/sec/MultiWindowList;

.field protected mContext:Landroid/content/Context;

.field protected mEscapedList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFinalDestinationRect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected mMultiWindowType:Landroid/sec/multiwindow/MultiWindowType;

.field mPermissionCheck:Z

.field protected mPinupItem:Lcom/android/server/sec/MWPackageItem;

.field protected mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

.field protected mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

.field public mStartingLauncher:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field private pausedItemWhenLocked:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/sec/MWPackageItem;",
            ">;"
        }
    .end annotation
.end field

.field protected sipHeight:I

.field protected statusBarHeight:I

.field protected userRotation:I


# direct methods
.method public constructor <init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V
    .locals 4
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    .line 63
    iput-boolean v1, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionCheck:Z

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-direct {v0}, Lcom/android/server/sec/MultiWindowModule$RunAppList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    .line 100
    iput-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    .line 105
    iput-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    .line 116
    iput v1, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    .line 118
    iput v3, p0, Lcom/android/server/sec/MultiWindowModule;->accelerometerRotation:I

    .line 120
    iput v3, p0, Lcom/android/server/sec/MultiWindowModule;->userRotation:I

    .line 122
    iput v1, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    .line 127
    iput-boolean v1, p0, Lcom/android/server/sec/MultiWindowModule;->mStartingLauncher:Z

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowModule;->mMultiWindowType:Landroid/sec/multiwindow/MultiWindowType;

    .line 140
    iput-object p2, p0, Lcom/android/server/sec/MultiWindowModule;->mContext:Landroid/content/Context;

    .line 141
    iput-object p3, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    .line 142
    iput-object p4, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    .line 143
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    .line 144
    return-void
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 921
    packed-switch p1, :pswitch_data_0

    .line 929
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 923
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 925
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 927
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 921
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public arrangeWindows(I)Z
    .locals 23
    .parameter "type"

    .prologue
    .line 1439
    const/4 v4, 0x0

    .line 1441
    .local v4, Result:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v16

    .line 1442
    .local v16, maxRect:Landroid/graphics/Rect;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1443
    .local v10, iDeviceWidth:I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1445
    .local v9, iDeviceHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v11

    .line 1446
    .local v11, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v18

    .line 1447
    .local v18, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v11}, Lcom/android/server/sec/IMultiWindowList;->size()I

    move-result v19

    .line 1449
    .local v19, runningSize:I
    packed-switch p1, :pswitch_data_0

    .line 1519
    :goto_0
    return v4

    .line 1455
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/server/sec/MultiWindowList;->mFocusedIndex:I

    .line 1458
    .local v7, focusedIndex:I
    const/4 v14, 0x0

    .line 1459
    .local v14, j:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    .line 1460
    if-ne v7, v8, :cond_0

    .line 1459
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1462
    :cond_0
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v15, v21, 0x32

    .line 1463
    .local v15, left:I
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v20, v21, 0x32

    .line 1464
    .local v20, top:I
    add-int/lit8 v14, v14, 0x1

    .line 1466
    new-instance v17, Landroid/graphics/Rect;

    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    div-int/lit8 v22, v9, 0x2

    add-int v22, v22, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1468
    .local v17, rect:Landroid/graphics/Rect;
    invoke-interface {v11, v8}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v5

    .line 1471
    .local v5, cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    goto :goto_2

    .line 1476
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v15           #left:I
    .end local v17           #rect:Landroid/graphics/Rect;
    .end local v20           #top:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v13

    .line 1477
    .local v13, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v13, :cond_2

    .line 1478
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v15, v21, 0x32

    .line 1479
    .restart local v15       #left:I
    add-int/lit8 v21, v14, 0x1

    mul-int/lit8 v20, v21, 0x32

    .line 1480
    .restart local v20       #top:I
    new-instance v17, Landroid/graphics/Rect;

    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    div-int/lit8 v22, v9, 0x2

    add-int v22, v22, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1481
    .restart local v17       #rect:Landroid/graphics/Rect;
    invoke-virtual {v13}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v5

    .line 1482
    .restart local v5       #cn:Landroid/content/ComponentName;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 1485
    .end local v5           #cn:Landroid/content/ComponentName;
    .end local v15           #left:I
    .end local v17           #rect:Landroid/graphics/Rect;
    .end local v20           #top:I
    :cond_2
    const/4 v4, 0x1

    .line 1486
    goto/16 :goto_0

    .line 1489
    .end local v7           #focusedIndex:I
    .end local v8           #i:I
    .end local v13           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v14           #j:I
    :pswitch_1
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 1491
    .restart local v17       #rect:Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 1492
    .restart local v15       #left:I
    const/16 v20, 0x0

    .line 1493
    .restart local v20       #top:I
    add-int/lit8 v12, v19, -0x1

    .line 1494
    .local v12, index:I
    const/16 v21, 0x3

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 1495
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_3
    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 1496
    invoke-interface {v11, v12}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v6

    .line 1497
    .local v6, componentName:Landroid/content/ComponentName;
    div-int/lit8 v21, v10, 0x2

    mul-int v15, v21, v8

    .line 1498
    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v15, v1, v2, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1499
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 1501
    add-int/lit8 v12, v12, -0x1

    .line 1495
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1504
    .end local v6           #componentName:Landroid/content/ComponentName;
    .end local v8           #i:I
    :cond_3
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_4
    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    .line 1505
    invoke-interface {v11, v12}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v6

    .line 1506
    .restart local v6       #componentName:Landroid/content/ComponentName;
    div-int/lit8 v21, v10, 0x2

    rem-int/lit8 v22, v8, 0x2

    mul-int v15, v21, v22

    .line 1507
    div-int/lit8 v21, v9, 0x2

    rem-int/lit8 v22, v8, 0x4

    div-int/lit8 v22, v22, 0x2

    mul-int v20, v21, v22

    .line 1508
    div-int/lit8 v21, v10, 0x2

    add-int v21, v21, v15

    div-int/lit8 v22, v9, 0x2

    add-int v22, v22, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1509
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 1511
    add-int/lit8 v12, v12, -0x1

    .line 1504
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1515
    .end local v6           #componentName:Landroid/content/ComponentName;
    :cond_4
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changVisibleFocusMultiWindow(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MultiWindowList;->changedFocus(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public changeLockScreenStatus(Z)Z
    .locals 10
    .parameter "isLock"

    .prologue
    .line 673
    if-eqz p1, :cond_2

    .line 674
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 676
    :cond_0
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v7}, Lcom/android/server/sec/MultiWindowList;->getVisibleItem()Ljava/util/List;

    move-result-object v6

    .line 678
    .local v6, vi:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem;

    .line 679
    .local v4, mayPausedItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v7

    if-nez v7, :cond_1

    .line 680
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 683
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v3

    .line 684
    .local v3, last:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_1

    .line 685
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    .line 686
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 692
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #last:Lcom/android/server/sec/MWClassItem;
    .end local v4           #mayPausedItem:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #vi:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 693
    .local v2, itemPaused:Lcom/android/server/sec/MWPackageItem;
    if-eqz v2, :cond_3

    .line 694
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 697
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v3

    .line 698
    .restart local v3       #last:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_3

    .line 699
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    goto :goto_1

    .line 703
    .end local v2           #itemPaused:Lcom/android/server/sec/MWPackageItem;
    .end local v3           #last:Lcom/android/server/sec/MWClassItem;
    :cond_4
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->pausedItemWhenLocked:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 706
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v0, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v5, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v7

    invoke-interface {v7, v0, v5}, Lcom/android/server/sec/IMultiWindowList;->getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 709
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v7, v0, v5}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 712
    :cond_6
    const/4 v7, 0x0

    return v7
.end method

.method public checkForceFinishedMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, Result:Z
    const-string v2, "AbsMultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkForceFinishedMultiWindow]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v1

    .line 1824
    .local v1, appList:Lcom/android/server/sec/IMultiWindowList;
    monitor-enter p0

    .line 1825
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v1, p1, v2}, Lcom/android/server/sec/IMultiWindowList;->realRemoveItem(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1826
    monitor-exit p0

    .line 1828
    return v0

    .line 1826
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final checkRunningAppList()V
    .locals 9

    .prologue
    .line 757
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    .line 759
    .local v6, runningTaskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    .line 760
    .local v3, isRunningApp:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v0

    .line 761
    .local v0, appList:Lcom/android/server/sec/IMultiWindowList;
    invoke-interface {v0}, Lcom/android/server/sec/IMultiWindowList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    .line 762
    invoke-interface {v0, v1}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sec/MWPackageItem;

    .line 763
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 764
    .local v5, rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 765
    const/4 v3, 0x1

    .line 770
    .end local v5           #rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    if-nez v3, :cond_1

    .line 771
    invoke-interface {v0, v1}, Lcom/android/server/sec/IMultiWindowList;->remove(I)Ljava/lang/Object;

    .line 761
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 768
    .restart local v5       #rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 774
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v5           #rapi:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    return-void
.end method

.method public destroyActivity(Landroid/content/ComponentName;I)Z
    .locals 6
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 852
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 853
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 865
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 856
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 858
    .local v3, sClassName:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/server/sec/MWPackageItem;->findSubClassObject(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v0

    .line 859
    .restart local v1       #Result:I
    goto :goto_0

    .line 861
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v2, v3, p2}, Lcom/android/server/sec/MWPackageItem;->removeMWClassItem(Ljava/lang/String;I)Z

    move-result v0

    .line 862
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 863
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/server/sec/IMultiWindowList;->remove(Ljava/lang/Object;)Z

    :cond_2
    move v1, v0

    .line 865
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public finish(Landroid/content/ComponentName;I)Z
    .locals 8
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 1561
    const/4 v6, 0x0

    .line 1563
    .local v6, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sec/MultiWindowList;->hasItemOfName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v7, v6

    .line 1579
    .end local v6           #Result:Z
    .local v7, Result:I
    :goto_0
    return v7

    .line 1566
    .end local v7           #Result:I
    .restart local v6       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v2

    .line 1567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/MultiWindowList;->realRemoveItem(Landroid/content/ComponentName;I)Z

    move-result v6

    .line 1568
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1575
    .local v0, tm:Ljava/util/Timer;
    new-instance v1, Lcom/android/server/sec/MultiWindowModule$TimerFinish;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/sec/MultiWindowModule$TimerFinish;-><init>(Landroid/app/ActivityManager;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1577
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    .line 1578
    const-string v1, "AbsMultiWindowModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 1579
    .restart local v7       #Result:I
    goto :goto_0

    .line 1568
    .end local v0           #tm:Ljava/util/Timer;
    .end local v7           #Result:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public finishActivity(Landroid/content/ComponentName;I)Z
    .locals 11
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 1587
    const/4 v0, 0x0

    .line 1589
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1592
    .local v7, sPackageName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v7}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1593
    .local v3, delItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v3, :cond_0

    move v1, v0

    .line 1638
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1596
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v5

    .line 1597
    .local v5, isFullScreenDelItem:Z
    monitor-enter p0

    .line 1598
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v6

    .line 1599
    .local v6, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1606
    .local v4, focusApp:Landroid/content/ComponentName;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1608
    .local v2, bResumeOrRelayout:Z
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/sec/MultiWindowList;->removeItem(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1610
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v7}, Lcom/android/server/sec/MultiWindowList;->hasItemOfName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1611
    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowModule;->setFinalDestinationRect(Lcom/android/server/sec/MWPackageItem;)V

    .line 1614
    :cond_1
    if-nez v0, :cond_2

    .line 1616
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v7}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1617
    if-eqz v3, :cond_2

    .line 1618
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v9

    if-lez v9, :cond_2

    .line 1619
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1620
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v8

    .line 1621
    .local v8, subObj:Lcom/android/server/sec/MWClassItem;
    if-eqz v2, :cond_4

    .line 1625
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 1636
    .end local v8           #subObj:Lcom/android/server/sec/MWClassItem;
    :cond_2
    :goto_1
    if-nez v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    .line 1637
    :cond_3
    monitor-exit p0

    move v1, v0

    .line 1638
    .restart local v1       #Result:I
    goto :goto_0

    .line 1627
    .end local v1           #Result:I
    .restart local v8       #subObj:Lcom/android/server/sec/MWClassItem;
    :cond_4
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v8}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResume(Landroid/sec/multiwindow/IMultiWindowAction;)V

    goto :goto_1

    .line 1637
    .end local v2           #bResumeOrRelayout:Z
    .end local v4           #focusApp:Landroid/content/ComponentName;
    .end local v6           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v8           #subObj:Lcom/android/server/sec/MWClassItem;
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public finishAllWindow()Z
    .locals 6

    .prologue
    .line 784
    const-string v1, "AbsMultiWindowModule"

    const-string v2, "[finishAllWindow]"

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 787
    .local v0, tm:Ljava/util/Timer;
    new-instance v1, Lcom/android/server/sec/MultiWindowModule$TimerFinish;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/sec/MultiWindowModule$TimerFinish;-><init>(Landroid/app/ActivityManager;Ljava/util/List;)V

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 789
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/sec/IMultiWindowList;->clear()V

    .line 791
    const/4 v1, 0x1

    return v1
.end method

.method public finishAppPid(I)Z
    .locals 7
    .parameter "pid"

    .prologue
    .line 1533
    const/4 v0, 0x0

    .line 1534
    .local v0, Result:Z
    const/4 v1, 0x0

    .line 1535
    .local v1, cName:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    .line 1536
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getPid()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 1537
    monitor-enter p0

    .line 1538
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/sec/MultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    .end local v1           #cName:Landroid/content/ComponentName;
    .local v2, cName:Landroid/content/ComponentName;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 1540
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/sec/MultiWindowList;->remove(Ljava/lang/Object;)Z

    .line 1541
    const/4 v0, 0x1

    .line 1542
    const-string v5, "AbsMultiWindowModule"

    const-string v6, "finishAppPid Result is true"

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    .line 1544
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 1549
    .end local v2           #cName:Landroid/content/ComponentName;
    .end local v4           #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #cName:Landroid/content/ComponentName;
    :cond_0
    return v0

    .line 1544
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1535
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1544
    .end local v1           #cName:Landroid/content/ComponentName;
    .restart local v2       #cName:Landroid/content/ComponentName;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #cName:Landroid/content/ComponentName;
    .restart local v1       #cName:Landroid/content/ComponentName;
    goto :goto_1
.end method

.method protected finishOtherStateChanged(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 1643
    return-void
.end method

.method public finishedSelfWindow(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v2

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/MultiWindowList;->realRemoveItem(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 235
    monitor-exit v2

    .line 236
    return v0

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fitToHalf(Landroid/content/ComponentName;I)Z
    .locals 12
    .parameter "className"
    .parameter "iDirection"

    .prologue
    const/4 v10, 0x0

    .line 1710
    const/4 v0, 0x0

    .line 1712
    .local v0, Result:Z
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 1713
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v4, :cond_0

    move v1, v0

    .line 1741
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1717
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1719
    .local v7, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v5

    .line 1720
    .local v5, max:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1721
    .local v3, iDeviceWidth:I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1724
    .local v2, iDeviceHeight:I
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 1726
    .local v6, orient:I
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_3

    .line 1727
    if-nez p2, :cond_2

    move v9, v10

    :goto_1
    iput v9, v7, Landroid/graphics/Rect;->left:I

    .line 1728
    iget v9, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1729
    if-nez p2, :cond_1

    div-int/lit8 v3, v3, 0x2

    .end local v3           #iDeviceWidth:I
    :cond_1
    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 1730
    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 1738
    .end local v2           #iDeviceHeight:I
    :goto_2
    invoke-virtual {p0, p1, v7, v10}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v8

    .line 1739
    .local v8, res:Lcom/android/server/sec/MWPackageItem;
    if-eqz v8, :cond_6

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    .line 1741
    .restart local v1       #Result:I
    goto :goto_0

    .line 1727
    .end local v1           #Result:I
    .end local v8           #res:Lcom/android/server/sec/MWPackageItem;
    .restart local v2       #iDeviceHeight:I
    .restart local v3       #iDeviceWidth:I
    :cond_2
    div-int/lit8 v9, v3, 0x2

    goto :goto_1

    .line 1732
    :cond_3
    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 1733
    if-nez p2, :cond_5

    iget v9, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    :goto_4
    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1734
    iput v3, v7, Landroid/graphics/Rect;->right:I

    .line 1735
    if-nez p2, :cond_4

    div-int/lit8 v2, v2, 0x2

    .end local v2           #iDeviceHeight:I
    :cond_4
    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 1733
    .restart local v2       #iDeviceHeight:I
    :cond_5
    iget v9, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v11, v2, 0x2

    add-int/2addr v9, v11

    goto :goto_4

    .end local v2           #iDeviceHeight:I
    .end local v3           #iDeviceWidth:I
    .restart local v8       #res:Lcom/android/server/sec/MWPackageItem;
    :cond_6
    move v0, v10

    .line 1739
    goto :goto_3
.end method

.method public freezeRotation()V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public getHeight(Landroid/content/ComponentName;)I
    .locals 6
    .parameter "className"

    .prologue
    .line 184
    const/4 v0, -0x1

    .line 185
    .local v0, Result:I
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 186
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 191
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 189
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 190
    .local v3, rect:Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int v0, v4, v5

    move v1, v0

    .line 191
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public getList()Lcom/android/server/sec/IMultiWindowList;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    return-object v0
.end method

.method protected getMaximum()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 911
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 912
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 913
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 914
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 916
    .local v1, iDeviceHeight:I
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iget v6, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    sub-int v6, v1, v6

    invoke-direct {v3, v4, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 917
    .local v3, maxRect:Landroid/graphics/Rect;
    return-object v3
.end method

.method public getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 6
    .parameter "className"

    .prologue
    const/4 v5, 0x0

    .line 893
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 894
    .local v1, Result:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 895
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    .line 902
    :goto_0
    return-object v1

    .line 899
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMinimumPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 900
    .local v0, Mini:Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mMultiWindowType:Landroid/sec/multiwindow/MultiWindowType;

    return-object v0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1079
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;
    .locals 3
    .parameter "className"

    .prologue
    .line 1809
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1811
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    return-object v0
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 430
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 431
    .local v1, mObj:Lcom/android/server/sec/MWPackageItem;
    if-nez v1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object v0

    .line 434
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v3

    .line 435
    .local v3, subObj:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_0

    .line 437
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, sClassName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 439
    .local v0, cmp:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 440
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #cmp:Landroid/content/ComponentName;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cmp:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getRunningWindowList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 346
    .local v2, imwList:Lcom/android/server/sec/IMultiWindowList;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v5

    .line 347
    :try_start_0
    invoke-interface {v2}, Lcom/android/server/sec/IMultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 348
    .local v3, mwObj2:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mwObj2:Lcom/android/server/sec/MWPackageItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    return-object v0
.end method

.method protected getTaskFromId(Ljava/util/List;Landroid/content/ComponentName;)I
    .locals 4
    .parameter
    .parameter "cn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1424
    .local p1, lst:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1425
    .local v1, item:Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1428
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1429
    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 1431
    .end local v1           #item:Landroid/app/ActivityManager$RecentTaskInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->getVisibleItem()Ljava/util/List;

    move-result-object v3

    .line 332
    .local v3, mwList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 333
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v2           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    return-object v0
.end method

.method public getWidth(Landroid/content/ComponentName;)I
    .locals 6
    .parameter "className"

    .prologue
    .line 168
    const/4 v0, -0x1

    .line 169
    .local v0, Result:I
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 170
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 175
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 173
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 174
    .local v3, rect:Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v5

    move v1, v0

    .line 175
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public hasFullSreen()Z
    .locals 1

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/sec/IMultiWindowList;->hasFullSreen()Z

    move-result v0

    return v0
.end method

.method public initWindowClassInfo(Landroid/content/ComponentName;I)V
    .locals 6
    .parameter "className"
    .parameter "pid"

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 481
    .local v1, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    .line 483
    .local v0, lst:Lcom/android/server/sec/MultiWindowList;
    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Lcom/android/server/sec/MultiWindowList;->add(Lcom/android/server/sec/MWPackageItem;)Z

    .line 485
    const-string v3, "AbsMultiWindowModule"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list add:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v0           #lst:Lcom/android/server/sec/MultiWindowList;
    :cond_0
    invoke-virtual {v1, p2}, Lcom/android/server/sec/MWPackageItem;->setPid(I)V

    .line 490
    return-void
.end method

.method public isDuplicated(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 318
    .local v1, mwo:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isLeft(Landroid/content/ComponentName;)Z
    .locals 6
    .parameter "com"

    .prologue
    const/4 v3, 0x0

    .line 656
    const/4 v2, 0x0

    .line 658
    .local v2, result:Z
    if-nez p1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return v3

    .line 659
    :cond_1
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 661
    .local v0, pItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 664
    .local v1, pItemRect:Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 666
    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 668
    goto :goto_0

    :cond_2
    move v2, v3

    .line 666
    goto :goto_1
.end method

.method public isMaximized(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, Result:Z
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 301
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 306
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 305
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v0

    move v1, v0

    .line 306
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isPermissionOff()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionCheck:Z

    return v0
.end method

.method public isPinupWindow(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, sPackageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 365
    .local v1, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 366
    .local v0, Result:Z
    :goto_0
    return v0

    .line 365
    .end local v0           #Result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 10
    .parameter "className"

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 385
    .local v2, appList:Lcom/android/server/sec/IMultiWindowList;
    invoke-interface {v2, v6}, Lcom/android/server/sec/IMultiWindowList;->hasItemOfName(Ljava/lang/String;)Z

    move-result v0

    .line 386
    .local v0, Result:Z
    if-nez v0, :cond_0

    move v1, v0

    .line 410
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 389
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/server/sec/IMultiWindowList;->isVisible(Landroid/content/ComponentName;)Z

    move-result v0

    .line 391
    if-eqz v0, :cond_3

    .line 392
    invoke-interface {v2, v6}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 393
    .local v4, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v4, :cond_1

    .line 394
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    .line 395
    .local v5, mwSub:Lcom/android/server/sec/MWClassItem;
    if-eqz v5, :cond_1

    .line 396
    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v3

    .line 397
    .local v3, flag:I
    and-int/lit8 v8, v3, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 398
    const/4 v0, 0x0

    .line 403
    .end local v3           #flag:I
    .end local v5           #mwSub:Lcom/android/server/sec/MWClassItem;
    :cond_1
    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 404
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 405
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, sClass:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/sec/MWPackageItem$InnerItem;->getParentClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/sec/MWPackageItem$InnerItem;->getChildClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    const/4 v0, 0x1

    .end local v4           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v7           #sClass:Ljava/lang/String;
    :cond_3
    :goto_1
    move v1, v0

    .line 410
    .restart local v1       #Result:I
    goto :goto_0

    .line 406
    .end local v1           #Result:I
    .restart local v4       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v7       #sClass:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public maximize(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 1653
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public maximizeAll()Z
    .locals 4

    .prologue
    .line 1661
    const/4 v0, 0x1

    .line 1662
    .local v0, Result:Z
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MWPackageItem;

    .line 1663
    .local v1, allItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1664
    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 1667
    .end local v1           #allItem:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    return v0
.end method

.method public minimize(Landroid/content/ComponentName;)Z
    .locals 13
    .parameter "className"

    .prologue
    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 1903
    const/4 v0, 0x0

    .line 1905
    .local v0, Result:Z
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 1906
    .local v6, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v6, :cond_0

    move v1, v0

    .line 1949
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1909
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1910
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 1911
    const-string v9, "AbsMultiWindowModule"

    const-string v10, "[minimize] Has already been applied."

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const/4 v0, 0x1

    move v1, v0

    .line 1913
    .restart local v1       #Result:I
    goto :goto_0

    .line 1916
    .end local v1           #Result:I
    :cond_1
    const-string v9, "AbsMultiWindowModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[minimize] className : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    .line 1919
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    .line 1920
    .local v4, amsSelf:Lcom/android/server/am/ActivityManagerService;
    const/16 v9, 0x64

    invoke-virtual {v4, v9, v12}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(II)Ljava/util/List;

    move-result-object v7

    .line 1922
    .local v7, rtList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, v7, p1}, Lcom/android/server/sec/MultiWindowModule;->getTaskFromId(Ljava/util/List;Landroid/content/ComponentName;)I

    move-result v2

    .line 1923
    .local v2, Taskid:I
    if-ltz v2, :cond_3

    .line 1924
    const-string v9, "AbsMultiWindowModule"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[minimize] Taskid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->moveTaskToBack(I)V

    .line 1926
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->mwEnsureActivitiesVisibleLocked()V

    .line 1929
    monitor-enter p0

    .line 1930
    if-eqz v6, :cond_2

    .line 1931
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    .line 1932
    .local v5, last:Lcom/android/server/sec/MWClassItem;
    if-eqz v5, :cond_2

    .line 1933
    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    .line 1936
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1937
    .local v3, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1938
    .local v8, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9, v3, v8}, Lcom/android/server/sec/MultiWindowList;->getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1939
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v9, v3, v8}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 1943
    .end local v3           #acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .end local v5           #last:Lcom/android/server/sec/MWClassItem;
    .end local v8           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1944
    const/4 v0, 0x1

    .line 1947
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    move v1, v0

    .line 1949
    .restart local v1       #Result:I
    goto/16 :goto_0

    .line 1943
    .end local v1           #Result:I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method public notifySIP(I)Z
    .locals 1
    .parameter "height"

    .prologue
    .line 1523
    const/4 v0, 0x0

    .line 1525
    .local v0, Result:Z
    return v0
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .locals 1
    .parameter "cName"
    .parameter "orientation"

    .prologue
    .line 1751
    const/4 v0, 0x0

    .line 1757
    .local v0, Result:Z
    return v0
.end method

.method public pauseChangeInformation(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 736
    .local v0, Result:Z
    return v0
.end method

.method public postResume(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "className"

    .prologue
    .line 1675
    const/4 v0, 0x0

    .line 1678
    .local v0, Result:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 1701
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1681
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    const-string v4, "AbsMultiWindowModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postResume>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1684
    .local v3, obj:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_1

    .line 1685
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->procSubClassOrganize()Z

    move-result v0

    .line 1688
    :cond_1
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    if-eqz v4, :cond_3

    .line 1689
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->ResumeData:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1690
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->MwListener:Landroid/sec/multiwindow/IMultiWindowListener;

    if-eqz v4, :cond_2

    .line 1692
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;->MwListener:Landroid/sec/multiwindow/IMultiWindowListener;

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowListener;->onResumeFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :cond_2
    :goto_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    :cond_3
    move v1, v0

    .line 1701
    .restart local v1       #Result:I
    goto :goto_0

    .line 1693
    .end local v1           #Result:I
    :catch_0
    move-exception v2

    .line 1694
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public rePositionOfAllWindows()V
    .locals 5

    .prologue
    .line 1761
    const-string v3, "AbsMultiWindowModule"

    const-string v4, "rePositionOfAllWindows"

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v2

    .line 1763
    .local v2, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1764
    .local v1, runningComName:Landroid/content/ComponentName;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/server/sec/MultiWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;Z)Z

    goto :goto_0

    .line 1766
    .end local v1           #runningComName:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method protected rePositionOfWindow(Landroid/content/ComponentName;Z)Z
    .locals 10
    .parameter "cName"
    .parameter "needResume"

    .prologue
    .line 1772
    const/4 v0, 0x1

    .line 1774
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 1776
    .local v2, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1777
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1779
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1781
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1782
    sget-object v8, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v3, v8}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 1783
    invoke-virtual {p0, v1}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    .line 1800
    :cond_0
    :goto_0
    return v0

    .line 1785
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {p0, v1, v5, v8}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 1789
    .local v6, resultItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1790
    .local v7, resultRect:Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1791
    invoke-virtual {v6}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v4

    .line 1792
    .local v4, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v4, :cond_0

    .line 1793
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .line 1794
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 1795
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public regMultiWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    .locals 9
    .parameter "className"
    .parameter "mwAction"
    .parameter "taskId"

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 543
    .local v0, Result:Z
    if-nez p1, :cond_0

    .line 544
    const-string v7, "AbsMultiWindowModule"

    const-string v8, "invalid params : className=null"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 581
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 548
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 549
    .local v4, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v4, :cond_1

    .line 550
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v7, p1}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 551
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v7, v4}, Lcom/android/server/sec/MultiWindowList;->add(Lcom/android/server/sec/MWPackageItem;)Z

    .line 560
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v2

    .line 561
    .local v2, inner:Lcom/android/server/sec/MWPackageItem$InnerItem;
    if-eqz v2, :cond_2

    .line 562
    invoke-virtual {v2, p2}, Lcom/android/server/sec/MWPackageItem$InnerItem;->setMultiWindowAction(Landroid/sec/multiwindow/IMultiWindowAction;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 581
    .restart local v1       #Result:I
    goto :goto_0

    .line 564
    .end local v1           #Result:I
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 565
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v5, prevClassItem:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v6, prevVisible:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWClassItem;

    .line 568
    .local v3, lastMWClassItem:Lcom/android/server/sec/MWClassItem;
    if-eqz v3, :cond_4

    .line 569
    invoke-virtual {v3}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    .line 571
    const-string v7, "AbsMultiWindowModule"

    const-string v8, "actionPause FALSE"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 578
    .end local v3           #lastMWClassItem:Lcom/android/server/sec/MWClassItem;
    .end local v5           #prevClassItem:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .end local v6           #prevVisible:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, p2, p3}, Lcom/android/server/sec/MWPackageItem;->addSubClassObject(Ljava/lang/String;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v0

    goto :goto_1

    .line 575
    .restart local v3       #lastMWClassItem:Lcom/android/server/sec/MWClassItem;
    .restart local v5       #prevClassItem:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .restart local v6       #prevVisible:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :cond_4
    const-string v7, "AbsMultiWindowModule"

    const-string v8, "lastMWClasItem=null"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public final regSubMultiWindowClass(Landroid/content/ComponentName;)Z
    .locals 8
    .parameter "className"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, Result:Z
    if-nez p1, :cond_0

    move v1, v0

    .line 469
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 455
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    const-string v5, "AbsMultiWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[regSubMultiWindowClass] ClassName  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, sPackageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, sClassName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 460
    .local v2, obj:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_1

    .line 461
    const-string v5, "AbsMultiWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[regSubMultiWindowClass] MWPackageItem is null, packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 462
    .restart local v1       #Result:I
    goto :goto_0

    .line 465
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getInnerItem()Lcom/android/server/sec/MWPackageItem$InnerItem;

    move-result-object v5

    if-nez v5, :cond_2

    .line 466
    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Lcom/android/server/sec/MWPackageItem;->addSubClassObject(Ljava/lang/String;I)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 469
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public restore(Landroid/content/ComponentName;)Z
    .locals 12
    .parameter "className"

    .prologue
    const/4 v11, 0x0

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, Result:Z
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 250
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 286
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 254
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 256
    .local v8, restoreRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eqz v9, :cond_1

    move v1, v0

    .line 257
    .restart local v1       #Result:I
    goto :goto_0

    .line 260
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, packageName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 263
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 264
    .local v3, itemRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v9, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, v9}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 267
    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    .end local v3           #itemRect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-nez v9, :cond_4

    .line 274
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v5

    .line 275
    .local v5, miniRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    .line 276
    .local v4, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 277
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v10}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x1e

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v10}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x1e

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 280
    .end local v4           #maxRect:Landroid/graphics/Rect;
    .end local v5           #miniRect:Landroid/graphics/Rect;
    :cond_4
    sget-object v9, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, v9}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 281
    const/4 v9, 0x1

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v6

    .line 282
    .local v6, mwItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v6, :cond_5

    .line 283
    const/4 v0, 0x1

    :cond_5
    move v1, v0

    .line 286
    .restart local v1       #Result:I
    goto/16 :goto_0
.end method

.method public restoreRotation()V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    .locals 6
    .parameter "className"
    .parameter "mwListener"

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, Result:Z
    const-string v4, "AbsMultiWindowModule"

    const-string v5, "[resume]"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, sPackageName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 807
    .local v2, mObj:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 819
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 810
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    new-instance v4, Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    invoke-direct {v4, p1, p2}, Lcom/android/server/sec/MultiWindowModule$ResumeItem;-><init>(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)V

    iput-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mResumeItem:Lcom/android/server/sec/MultiWindowModule$ResumeItem;

    .line 812
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v5

    .line 813
    :try_start_0
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v4, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/ComponentName;)Z

    .line 814
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->runNextMultiWindow()V

    .line 817
    const/4 v0, 0x1

    move v1, v0

    .line 819
    .restart local v1       #Result:I
    goto :goto_0

    .line 814
    .end local v1           #Result:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public resumeChangeInformation(Landroid/content/ComponentName;I)V
    .locals 20
    .parameter "className"
    .parameter "taskID"

    .prologue
    .line 589
    monitor-enter p0

    .line 590
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v9

    .line 591
    .local v9, obj:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/sec/MultiWindowModule;->isLeft(Landroid/content/ComponentName;)Z

    move-result v6

    .line 592
    .local v6, isResumeItemLeft:Z
    const/4 v10, 0x0

    .line 593
    .local v10, objPair:Lcom/android/server/sec/MWClassItem;
    if-eqz v9, :cond_8

    .line 595
    invoke-virtual {v9}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v17

    if-nez v17, :cond_2

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v14

    .line 598
    .local v14, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_5

    .line 599
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 600
    .local v12, runningCom:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v13

    .line 601
    .local v13, runningItem:Lcom/android/server/sec/MWClassItem;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;)Z

    move-result v17

    if-nez v17, :cond_1

    if-nez v10, :cond_1

    .line 602
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    .line 603
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/sec/MultiWindowModule;->isLeft(Landroid/content/ComponentName;)Z

    move-result v17

    move/from16 v0, v17

    if-eq v0, v6, :cond_0

    move-object v10, v13

    .line 606
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Lcom/android/server/sec/MWPackageItem;->getMWClassItem(Ljava/lang/String;I)Lcom/android/server/sec/MWClassItem;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    .line 598
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 604
    :cond_1
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    goto :goto_1

    .line 652
    .end local v4           #i:I
    .end local v6           #isResumeItemLeft:Z
    .end local v9           #obj:Lcom/android/server/sec/MWPackageItem;
    .end local v10           #objPair:Lcom/android/server/sec/MWClassItem;
    .end local v12           #runningCom:Landroid/content/ComponentName;
    .end local v13           #runningItem:Lcom/android/server/sec/MWClassItem;
    .end local v14           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 609
    .restart local v6       #isResumeItemLeft:Z
    .restart local v9       #obj:Lcom/android/server/sec/MWPackageItem;
    .restart local v10       #objPair:Lcom/android/server/sec/MWClassItem;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 611
    .local v3, allItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v8

    .line 612
    .local v8, last:Lcom/android/server/sec/MWClassItem;
    if-eqz v8, :cond_3

    .line 613
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    goto :goto_2

    .line 616
    .end local v3           #allItem:Lcom/android/server/sec/MWPackageItem;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #last:Lcom/android/server/sec/MWClassItem;
    :catchall_1
    move-exception v17

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    :try_start_5
    invoke-virtual {v9}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v8

    .line 618
    .restart local v8       #last:Lcom/android/server/sec/MWClassItem;
    if-eqz v8, :cond_7

    .line 619
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V

    .line 647
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #last:Lcom/android/server/sec/MWClassItem;
    :cond_5
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v2, acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v15, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v15}, Lcom/android/server/sec/IMultiWindowList;->getPauseActionItem(Ljava/util/List;Ljava/util/List;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPause(Ljava/util/List;Ljava/util/List;)V

    .line 652
    :cond_6
    monitor-exit p0

    .line 653
    .end local v2           #acActions:Ljava/util/List;,"Ljava/util/List<Landroid/sec/multiwindow/IMultiWindowAction;>;"
    .end local v15           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    :goto_4
    return-void

    .line 621
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v8       #last:Lcom/android/server/sec/MWClassItem;
    :cond_7
    const-string v17, "AbsMultiWindowModule"

    const-string v18, "invalid state : last=null"

    invoke-static/range {v17 .. v18}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 627
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #last:Lcom/android/server/sec/MWClassItem;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 628
    .local v11, packageName:Ljava/lang/String;
    invoke-static {v11}, Landroid/sec/multiwindow/MultiWindowUtil;->isVisibleActivity(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 629
    monitor-exit p0

    goto :goto_4

    .line 631
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/sec/MultiWindowList;->getVisibleItem()Ljava/util/List;

    move-result-object v16

    .line 633
    .local v16, vi:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MWPackageItem;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sec/MWPackageItem;

    .line 634
    .local v7, item2:Lcom/android/server/sec/MWPackageItem;
    if-eqz v7, :cond_a

    .line 635
    new-instance v17, Landroid/content/ComponentName;

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-direct/range {v17 .. v19}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 638
    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v8

    .line 639
    .restart local v8       #last:Lcom/android/server/sec/MWClassItem;
    if-eqz v8, :cond_a

    .line 640
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/android/server/sec/MWClassItem;->setMultiWindowVisibleFlag(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5
.end method

.method protected runNextMultiWindow()V
    .locals 6

    .prologue
    .line 743
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v2

    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 745
    monitor-exit v2

    .line 751
    :goto_0
    return-void

    .line 746
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 749
    .local v0, tm:Ljava/util/Timer;
    new-instance v1, Lcom/android/server/sec/MultiWindowModule$TimerRun;

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/sec/MultiWindowModule$TimerRun;-><init>(Landroid/content/Context;Lcom/android/server/sec/MultiWindowModule$RunAppList;Lcom/android/server/sec/IMultiWindowList;)V

    const-wide/16 v2, 0x32

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 750
    const-string v1, "AbsMultiWindowModule"

    const-string v2, " item runing~"

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    .end local v0           #tm:Ljava/util/Timer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final saveCaptureItem(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z
    .locals 18
    .parameter "className"
    .parameter "bitmap"

    .prologue
    .line 989
    const/4 v1, 0x0

    .line 991
    .local v1, Result:Z
    move-object/from16 v11, p2

    .line 992
    .local v11, thumbnail:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v7

    .line 993
    .local v7, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v7, :cond_0

    if-nez v11, :cond_1

    :cond_0
    move v2, v1

    .line 1033
    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_0
    return v2

    .line 996
    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v15

    if-nez v15, :cond_6

    .line 997
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 998
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 999
    iget v15, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v15

    .line 1001
    .local v4, displayWidth:D
    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1002
    .local v10, r:Landroid/graphics/Rect;
    const/4 v12, 0x0

    .local v12, widthM:I
    const/4 v6, 0x0

    .local v6, heightM:I
    const/4 v13, 0x0

    .local v13, xM:I
    const/4 v14, 0x0

    .line 1004
    .local v14, yM:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v15, v15

    div-double v8, v4, v15

    .line 1006
    .local v8, multipleValue:D
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-double v15, v15

    div-double/2addr v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v12, v15

    .line 1007
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-double v15, v15

    div-double/2addr v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v6, v15

    .line 1008
    iget v15, v10, Landroid/graphics/Rect;->left:I

    int-to-double v15, v15

    div-double/2addr v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v13, v15

    .line 1009
    iget v15, v10, Landroid/graphics/Rect;->top:I

    int-to-double v15, v15

    div-double/2addr v15, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v15

    double-to-int v14, v15

    .line 1012
    add-int v15, v12, v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 1013
    add-int v15, v12, v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    sub-int v15, v15, v16

    sub-int/2addr v12, v15

    .line 1015
    :cond_2
    add-int v15, v6, v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 1016
    add-int v15, v6, v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sub-int v15, v15, v16

    sub-int/2addr v6, v15

    .line 1019
    :cond_3
    if-gez v13, :cond_4

    .line 1020
    add-int/2addr v12, v13

    .line 1021
    const/4 v13, 0x0

    .line 1023
    :cond_4
    if-gez v14, :cond_5

    .line 1024
    add-int/2addr v6, v14

    .line 1025
    const/4 v14, 0x0

    .line 1028
    :cond_5
    invoke-static {v11, v13, v14, v12, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1030
    .end local v3           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v4           #displayWidth:D
    .end local v6           #heightM:I
    .end local v8           #multipleValue:D
    .end local v10           #r:Landroid/graphics/Rect;
    .end local v12           #widthM:I
    .end local v13           #xM:I
    .end local v14           #yM:I
    :cond_6
    const-string v15, "AbsMultiWindowModule"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "capture - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {v7, v11}, Lcom/android/server/sec/MWPackageItem;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    move v2, v1

    .line 1033
    .restart local v2       #Result:I
    goto/16 :goto_0
.end method

.method public screenShot()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 936
    const/4 v0, 0x0

    .line 938
    .local v0, Result:Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 939
    .local v5, display:Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 940
    .local v4, dispalyMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 941
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 943
    .local v6, metrixs:Landroid/graphics/Matrix;
    const/4 v9, 0x2

    new-array v3, v9, [F

    const/4 v9, 0x0

    iget v10, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    aput v10, v3, v9

    const/4 v9, 0x1

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v10, v10

    aput v10, v3, v9

    .line 944
    .local v3, dims:[F
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/sec/MultiWindowModule;->getDegreesForRotation(I)F

    move-result v2

    .line 945
    .local v2, degrees:F
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_2

    const/4 v7, 0x1

    .line 946
    .local v7, requiresRotation:Z
    :goto_0
    const-string v9, "jhseok"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "module screenShot requiresRotation = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    if-eqz v7, :cond_0

    .line 949
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 950
    neg-float v9, v2

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 951
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 952
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    aput v10, v3, v9

    .line 953
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    aput v10, v3, v9

    .line 955
    :cond_0
    const/4 v9, 0x0

    aget v9, v3, v9

    float-to-int v9, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    float-to-int v10, v10

    invoke-static {v9, v10}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 956
    if-eqz v7, :cond_1

    .line 958
    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 960
    .local v8, ss:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 961
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 962
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 963
    const/4 v9, 0x0

    aget v9, v3, v9

    neg-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    const/4 v10, 0x1

    aget v10, v3, v10

    neg-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 964
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 965
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 966
    move-object v0, v8

    .line 969
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v8           #ss:Landroid/graphics/Bitmap;
    :cond_1
    const-string v9, "jhseok"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "module screenShot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-nez v0, :cond_3

    .line 972
    const/4 v0, 0x0

    .line 976
    .end local v0           #Result:Landroid/graphics/Bitmap;
    :goto_1
    return-object v0

    .line 945
    .end local v7           #requiresRotation:Z
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 975
    .restart local v7       #requiresRotation:Z
    :cond_3
    const-string v9, "jhseok"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "module screenShot2"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setFinalDestinationRect(Lcom/android/server/sec/MWPackageItem;)V
    .locals 4
    .parameter "freeItem"

    .prologue
    .line 1372
    if-nez p1, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1376
    .local v0, packageName:Ljava/lang/String;
    const-string v1, "com.diotek.screen_capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1379
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1382
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1384
    :cond_3
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowModule;->mFinalDestinationRect:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMinimum(Landroid/content/ComponentName;II)Z
    .locals 5
    .parameter "className"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 877
    .local v0, Result:Z
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 878
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 884
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 882
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MWPackageItem;->setMinimumPoint(Landroid/graphics/Point;)Z

    move-result v0

    move v1, v0

    .line 884
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public setPermissionOff(Z)V
    .locals 0
    .parameter "permissionCheck"

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/android/server/sec/MultiWindowModule;->mPermissionCheck:Z

    .line 371
    return-void
.end method

.method public setPinupWindow(Landroid/content/ComponentName;Z)Z
    .locals 4
    .parameter "className"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 1043
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    .line 1045
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1046
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    .line 1057
    :cond_0
    :goto_0
    return v2

    .line 1051
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1052
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v0, :cond_2

    .line 1053
    const/4 v2, 0x0

    goto :goto_0

    .line 1055
    :cond_2
    if-eqz p2, :cond_0

    .line 1056
    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mPinupItem:Lcom/android/server/sec/MWPackageItem;

    goto :goto_0
.end method

.method public setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;
    .locals 11
    .parameter "className"
    .parameter "newRect"
    .parameter "checkMinSize"

    .prologue
    .line 1838
    const-string v7, "AbsMultiWindowModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPositionOfWindow :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newRect ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const/4 v0, 0x0

    .line 1841
    .local v0, Result:Lcom/android/server/sec/MWPackageItem;
    if-eqz p2, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_0

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    if-gt v7, v8, :cond_1

    .line 1842
    :cond_0
    const-string v7, "AbsMultiWindowModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rect Value is not available. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1893
    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    .local v1, Result:Lcom/android/server/sec/MWPackageItem;
    :goto_0
    return-object v1

    .line 1846
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_1
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1847
    if-nez v0, :cond_2

    move-object v1, v0

    .line 1848
    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    goto :goto_0

    .line 1851
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    .line 1852
    .local v4, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1853
    .local v3, iDeviceWidth:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1856
    .local v2, iDeviceHeight:I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lt v7, v3, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v7, v2, :cond_4

    .line 1857
    :cond_3
    sget-object v7, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v0, v7}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 1866
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v3, :cond_5

    .line 1867
    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v3

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1868
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v2, :cond_6

    .line 1869
    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v2

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1872
    :cond_6
    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1876
    :cond_7
    :goto_1
    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_c

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1879
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1880
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v6, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1881
    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1884
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1885
    invoke-virtual {v0, v6}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(Landroid/graphics/Rect;)V

    .line 1886
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v5

    .line 1887
    .local v5, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v5, :cond_a

    .line 1888
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .line 1889
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 1890
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v5}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .end local v5           #obj:Lcom/android/server/sec/MWClassItem;
    :cond_a
    move-object v1, v0

    .line 1893
    .end local v0           #Result:Lcom/android/server/sec/MWPackageItem;
    .restart local v1       #Result:Lcom/android/server/sec/MWPackageItem;
    goto/16 :goto_0

    .line 1873
    .end local v1           #Result:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #rect:Landroid/graphics/Rect;
    .restart local v0       #Result:Lcom/android/server/sec/MWPackageItem;
    :cond_b
    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v3, v8

    if-le v7, v8, :cond_7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v3, v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 1877
    :cond_c
    iget v7, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    if-le v7, v8, :cond_8

    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2
.end method

.method protected setToMax(Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "className"

    .prologue
    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, Result:Z
    const-string v4, "AbsMultiWindowModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setToMax : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1398
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 1420
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1408
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    sget-object v4, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, v4}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 1409
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/sec/MultiWindowModule;->notifySIP(I)Z

    .line 1412
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1413
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/sec/MWPackageItem;->setRestoreRect(Landroid/graphics/Rect;)V

    .line 1415
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 1416
    .local v3, mItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v3, :cond_2

    .line 1417
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 1420
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public start(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, Result:Z
    const/4 v1, 0x0

    .line 204
    .local v1, item:Lcom/android/server/sec/MWPackageItem;
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 206
    if-nez v1, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 209
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v3

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/sec/MultiWindowList;->addNewItem(Lcom/android/server/sec/MWPackageItem;)Z

    .line 211
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v3

    .line 215
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/Intent;)Z

    .line 216
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowModule;->runNextMultiWindow()V

    .line 219
    const/4 v0, 0x1

    .line 221
    return v0

    .line 211
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 216
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public startMultiWindow(Landroid/content/ComponentName;Z)Z
    .locals 7
    .parameter "className"
    .parameter "isMiniMode"

    .prologue
    const/4 v4, 0x0

    .line 498
    const/4 v0, 0x1

    .line 500
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 502
    .local v1, obj:Lcom/android/server/sec/MWPackageItem;
    const-string v5, "AbsMultiWindowModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startMultiWindow : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " obj != null : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", isRunning = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    if-eqz v1, :cond_0

    .line 504
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 505
    const-string v3, "AbsMultiWindowModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEscapedList.containsKey("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :goto_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/sec/MultiWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;Z)Z

    .line 532
    :cond_0
    return v0

    :cond_1
    move v3, v4

    .line 502
    goto :goto_0

    .line 509
    :cond_2
    if-eqz p2, :cond_3

    .line 510
    const-string v3, "AbsMultiWindowModule"

    const-string v5, "start MiniMode"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v3, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .line 514
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_4

    .line 515
    const-string v3, "AbsMultiWindowModule"

    const-string v5, "start RestoreRect"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    sget-object v3, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .line 519
    :cond_4
    const-string v3, "AbsMultiWindowModule"

    const-string v5, "start FullScreen"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object v3, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    goto :goto_1
.end method

.class public Lcom/android/server/sec/SplitWindowModule;
.super Lcom/android/server/sec/MultiWindowModule;
.source "SplitWindowModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitWindowModule"

.field private static mInstance:Lcom/android/server/sec/SplitWindowModule;


# instance fields
.field public mReplaceName:Landroid/content/ComponentName;

.field public mTargetName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    return-void
.end method

.method private constructor <init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V
    .locals 1
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sec/MultiWindowModule;-><init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V

    .line 23
    iput-object v0, p0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    .line 24
    iput-object v0, p0, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    .line 30
    new-instance v0, Lcom/android/server/sec/MultiWindowList;

    invoke-direct {v0}, Lcom/android/server/sec/MultiWindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sec/SplitWindowModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/server/sec/SplitWindowModule;->changeMaximumRect()V

    return-void
.end method

.method private changeMaximumRect()V
    .locals 8

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/server/sec/SplitWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v2

    .line 554
    .local v2, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-interface {v2}, Lcom/android/server/sec/IMultiWindowList;->size()I

    move-result v4

    .line 555
    .local v4, runningSize:I
    const-string v5, "SplitWindowModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeMaximumRect : runningSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 557
    invoke-interface {v2, v1}, Lcom/android/server/sec/IMultiWindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MWPackageItem;

    .line 558
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v0

    .line 559
    .local v0, cn:Landroid/content/ComponentName;
    const/4 v5, 0x1

    invoke-virtual {p0, v0, v5}, Lcom/android/server/sec/SplitWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;Z)Z

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v3           #item:Lcom/android/server/sec/MWPackageItem;
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/SplitWindowModule;
    .locals 1
    .parameter "mwt"
    .parameter "context"
    .parameter "handler"
    .parameter "wm"

    .prologue
    .line 36
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/server/sec/SplitWindowModule;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sec/SplitWindowModule;-><init>(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)V

    sput-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    .line 39
    :cond_0
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    return-object v0
.end method

.method public static removeInstance()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/SplitWindowModule;->finishAllWindow()Z

    .line 47
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowList;->clear()V

    .line 50
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/SplitWindowModule;->mInstance:Lcom/android/server/sec/SplitWindowModule;

    goto :goto_0
.end method

.method private setPositionOfWindow(Landroid/content/ComponentName;ZZ)Lcom/android/server/sec/MWPackageItem;
    .locals 7
    .parameter "className"
    .parameter "isLeft"
    .parameter "checkMinSize"

    .prologue
    const/4 v6, 0x0

    .line 511
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 513
    .local v4, newRect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 514
    .local v0, display:Landroid/view/Display;
    invoke-super {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v3

    .line 515
    .local v3, max:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 516
    .local v2, iDeviceWidth:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 518
    .local v1, iDeviceHeight:I
    if-eqz p2, :cond_1

    .line 519
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    .line 520
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 521
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 522
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 523
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 544
    :goto_0
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    return-object v5

    .line 525
    :cond_0
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 526
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 527
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 528
    div-int/lit8 v5, v1, 0x2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2

    .line 532
    div-int/lit8 v5, v2, 0x2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 533
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 534
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 535
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 537
    :cond_2
    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 538
    iget v5, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 539
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 540
    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private setToHalf(Landroid/content/ComponentName;Z)V
    .locals 9
    .parameter "appName"
    .parameter "isLeft"

    .prologue
    const/4 v7, 0x0

    .line 319
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 320
    .local v0, display:Landroid/view/Display;
    invoke-super {p0}, Lcom/android/server/sec/MultiWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v4

    .line 321
    .local v4, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 322
    .local v2, iDeviceWidth:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 324
    .local v1, iDeviceHeight:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 326
    .local v5, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    .line 327
    if-eqz p2, :cond_1

    :goto_0
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 328
    iget v7, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 329
    if-eqz p2, :cond_0

    div-int/lit8 v2, v2, 0x2

    .end local v2           #iDeviceWidth:I
    :cond_0
    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 330
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 338
    .end local v1           #iDeviceHeight:I
    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v5, v7}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v3

    .line 339
    .local v3, item:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v3}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v6

    .line 340
    .local v6, subObj:Lcom/android/server/sec/MWClassItem;
    if-eqz v6, :cond_5

    .line 341
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-virtual {v6}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 345
    :goto_2
    return-void

    .line 327
    .end local v3           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #subObj:Lcom/android/server/sec/MWClassItem;
    .restart local v1       #iDeviceHeight:I
    .restart local v2       #iDeviceWidth:I
    :cond_1
    div-int/lit8 v7, v2, 0x2

    goto :goto_0

    .line 332
    :cond_2
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 333
    if-eqz p2, :cond_4

    iget v7, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    :goto_3
    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 334
    iput v2, v5, Landroid/graphics/Rect;->right:I

    .line 335
    if-eqz p2, :cond_3

    div-int/lit8 v1, v1, 0x2

    .end local v1           #iDeviceHeight:I
    :cond_3
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 333
    .restart local v1       #iDeviceHeight:I
    :cond_4
    iget v7, p0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    div-int/lit8 v8, v1, 0x2

    add-int/2addr v7, v8

    goto :goto_3

    .line 343
    .end local v1           #iDeviceHeight:I
    .end local v2           #iDeviceWidth:I
    .restart local v3       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v6       #subObj:Lcom/android/server/sec/MWClassItem;
    :cond_5
    const-string v7, "SplitWindowModule"

    const-string v8, "setToHalf operation has failed : subObj=null"

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;Z)Z
    .locals 16
    .parameter "intentCaller"
    .parameter "intentCallee"
    .parameter "flgReplace"

    .prologue
    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, Result:Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 414
    :cond_0
    const-string v13, "SplitWindowModule"

    const-string v14, "invalid params !! [null value]"

    invoke-static {v13, v14}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v1

    .line 500
    :goto_0
    return v13

    .line 417
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/sec/SplitWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 418
    .local v5, callerItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 420
    .local v6, callerName:Landroid/content/ComponentName;
    if-nez v5, :cond_2

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/sec/SplitWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 424
    move-object/from16 v12, p1

    .line 425
    .local v12, tempIntent:Landroid/content/Intent;
    move-object/from16 p1, p2

    .line 426
    move-object/from16 p2, v12

    .line 429
    .end local v12           #tempIntent:Landroid/content/Intent;
    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v13

    if-nez v13, :cond_4

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getVisibleWindowList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 431
    .local v8, com:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v11

    .line 432
    .local v11, mayCallerItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v11}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v13

    if-nez v13, :cond_3

    .line 433
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/sec/SplitWindowModule;->isLeft(Landroid/content/ComponentName;)Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/sec/SplitWindowModule;->isLeft(Landroid/content/ComponentName;)Z

    move-result v14

    if-eq v13, v14, :cond_3

    .line 434
    move-object v6, v8

    .line 435
    move-object v5, v11

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    .line 450
    .end local v8           #com:Landroid/content/ComponentName;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #mayCallerItem:Lcom/android/server/sec/MWPackageItem;
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 452
    .local v7, callerRect:Landroid/graphics/Rect;
    iget v13, v7, Landroid/graphics/Rect;->left:I

    if-nez v13, :cond_8

    iget v13, v7, Landroid/graphics/Rect;->top:I

    if-nez v13, :cond_8

    const/4 v10, 0x1

    .line 453
    .local v10, isCallerLeft:Z
    :goto_1
    const-string v13, "SplitWindowModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isCallerLeft : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 457
    .local v4, calleeItem:Lcom/android/server/sec/MWPackageItem;
    if-nez v4, :cond_5

    .line 458
    const-string v13, "SplitWindowModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "startSplitScreensForLauncher : calleeItem Create - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/sec/MultiWindowList;->getNewItemInstance(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 460
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    monitor-enter v14

    .line 461
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v13, v4}, Lcom/android/server/sec/MultiWindowList;->addNewItem(Lcom/android/server/sec/MWPackageItem;)Z

    .line 462
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :cond_5
    const-string v13, "SplitWindowModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Need to Run CallerItem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v13, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v4, v13}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v14

    .line 469
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->add(Landroid/content/Intent;)Z

    .line 470
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 472
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v13}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ZZ)Lcom/android/server/sec/MWPackageItem;

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-nez v10, :cond_9

    const/4 v13, 0x1

    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13, v15}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;ZZ)Lcom/android/server/sec/MWPackageItem;

    .line 475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    monitor-enter v14

    .line 476
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mRunAppList:Lcom/android/server/sec/MultiWindowModule$RunAppList;

    invoke-virtual {v13}, Lcom/android/server/sec/MultiWindowModule$RunAppList;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->runNextMultiWindow()V

    .line 478
    :cond_6
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 480
    if-eqz p3, :cond_a

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v13}, Lcom/android/server/sec/MultiWindowList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MWPackageItem;

    .line 482
    .local v2, allItem:Lcom/android/server/sec/MWPackageItem;
    const-string v13, "SplitWindowModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allItem : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v13

    if-nez v13, :cond_7

    .line 485
    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    .line 486
    const-string v13, "SplitWindowModule"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mReplaceName : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 452
    .end local v2           #allItem:Lcom/android/server/sec/MWPackageItem;
    .end local v4           #calleeItem:Lcom/android/server/sec/MWPackageItem;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #isCallerLeft:Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 462
    .restart local v4       #calleeItem:Lcom/android/server/sec/MWPackageItem;
    .restart local v10       #isCallerLeft:Z
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .line 470
    :catchall_1
    move-exception v13

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v13

    .line 473
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 478
    :catchall_2
    move-exception v13

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v13

    .line 492
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    .line 493
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/sec/SplitWindowModule;->setPermissionOff(Z)V

    .line 494
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    .line 495
    .local v3, amsSelf:Lcom/android/server/am/ActivityManagerService;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->mwEnsureActivitiesVisibleLocked()V

    .line 496
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/sec/SplitWindowModule;->setPermissionOff(Z)V

    .line 498
    const/4 v1, 0x1

    move v13, v1

    .line 500
    goto/16 :goto_0
.end method


# virtual methods
.method public exchangeSplitScreens()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 350
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v8}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v8

    if-ge v8, v9, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v7

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/sec/SplitWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v6

    .line 354
    .local v6, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 358
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 359
    .local v0, currentApp:Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 360
    .local v3, nextApp:Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 361
    .local v1, currentItem:Lcom/android/server/sec/MWPackageItem;
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    .line 362
    .local v4, nextItem:Lcom/android/server/sec/MWPackageItem;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 363
    .local v2, currentRect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 365
    .local v5, nextRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0, v5, v7}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 366
    invoke-virtual {p0, v3, v2, v7}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    .line 390
    const/4 v7, 0x1

    goto :goto_0
.end method

.method protected finishOtherStateChanged(Landroid/content/ComponentName;)V
    .locals 17
    .parameter "className"

    .prologue
    .line 208
    const-string v14, "SplitWindowModule"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[finishOtherStateChanged] packageName : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 210
    .local v5, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getSubClassList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 211
    const-string v14, "SplitWindowModule"

    const-string v15, "[finishOtherStateChanged] not changed"

    invoke-static {v14, v15}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v14, "com.diotek.screen_capture"

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v11

    .line 219
    .local v11, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v10, runningHalfList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 222
    .local v9, runName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v12

    .line 223
    .local v12, tempItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v12}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    .end local v9           #runName:Landroid/content/ComponentName;
    .end local v12           #tempItem:Lcom/android/server/sec/MWPackageItem;
    :cond_3
    if-eqz v10, :cond_0

    .line 228
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_0

    .line 230
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 231
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 232
    .restart local v9       #runName:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 233
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    goto :goto_0

    .line 240
    .end local v9           #runName:Landroid/content/ComponentName;
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 241
    .local v1, focusApp:Landroid/content/ComponentName;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 243
    .local v6, notFocusApp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 244
    .local v2, focusAppItem:Lcom/android/server/sec/MWPackageItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v7

    .line 246
    .local v7, notFocusAppItem:Lcom/android/server/sec/MWPackageItem;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 247
    .local v3, focusRect:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v7}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v8, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 249
    .local v8, notFocusRect:Landroid/graphics/Rect;
    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 250
    const/4 v13, 0x1

    .line 251
    .local v13, toLeft:Z
    iget v14, v8, Landroid/graphics/Rect;->top:I

    if-nez v14, :cond_6

    iget v14, v8, Landroid/graphics/Rect;->left:I

    if-nez v14, :cond_6

    .line 252
    const/4 v13, 0x0

    .line 254
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/android/server/sec/SplitWindowModule;->setToHalf(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0
.end method

.method public getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;
    .locals 2
    .parameter "className"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    .line 271
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    return-object v0
.end method

.method public notifySIP(I)Z
    .locals 4
    .parameter "height"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, Result:Z
    const-string v1, "SplitWindowModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySIP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/SplitWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 59
    :cond_0
    const/4 p1, 0x0

    .line 61
    :cond_1
    iget v1, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    if-eq v1, p1, :cond_2

    .line 62
    iput p1, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    .line 64
    iget v1, p0, Lcom/android/server/sec/MultiWindowModule;->sipHeight:I

    if-nez v1, :cond_3

    .line 65
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sec/SplitWindowModule$1;

    invoke-direct {v2, p0}, Lcom/android/server/sec/SplitWindowModule$1;-><init>(Lcom/android/server/sec/SplitWindowModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 86
    :cond_2
    :goto_0
    return v0

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/android/server/sec/SplitWindowModule;->changeMaximumRect()V

    goto :goto_0
.end method

.method public postResume(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, Result:Z
    invoke-super {p0, p1}, Lcom/android/server/sec/MultiWindowModule;->postResume(Landroid/content/ComponentName;)Z

    .line 310
    iget-object v1, p0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/sec/SplitWindowModule;->mTargetName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/sec/SplitWindowModule;->finish(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 312
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sec/SplitWindowModule;->mReplaceName:Landroid/content/ComponentName;

    .line 315
    :cond_0
    return v0
.end method

.method protected rePositionOfWindow(Landroid/content/ComponentName;Z)Z
    .locals 19
    .parameter "cName"
    .parameter "needResume"

    .prologue
    .line 136
    const/4 v2, 0x1

    .line 138
    .local v2, Result:Z
    const-string v16, "SplitWindowModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "rePositionOfWindow : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 140
    .local v12, orient:I
    rem-int/lit8 v16, v12, 0x2

    if-nez v16, :cond_1

    const/4 v8, 0x1

    .line 141
    .local v8, isLandscape:Z
    :goto_0
    const-string v16, "SplitWindowModule"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isLandscape : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v10

    .line 143
    .local v10, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 144
    .local v6, iDeviceWidth:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 146
    .local v5, iDeviceHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/sec/SplitWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v7

    .line 148
    .local v7, imwList:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v9

    .line 149
    .local v9, item:Lcom/android/server/sec/MWPackageItem;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 151
    .local v13, rect:Landroid/graphics/Rect;
    invoke-virtual {v9}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLastName()Landroid/content/ComponentName;

    move-result-object v3

    .line 153
    .local v3, cn:Landroid/content/ComponentName;
    invoke-virtual {v9}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 155
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/sec/SplitWindowModule;->setToMax(Landroid/content/ComponentName;)Z

    .line 202
    :cond_0
    :goto_1
    return v2

    .line 140
    .end local v3           #cn:Landroid/content/ComponentName;
    .end local v5           #iDeviceHeight:I
    .end local v6           #iDeviceWidth:I
    .end local v7           #imwList:Lcom/android/server/sec/IMultiWindowList;
    .end local v8           #isLandscape:Z
    .end local v9           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v10           #maxRect:Landroid/graphics/Rect;
    .end local v13           #rect:Landroid/graphics/Rect;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 157
    .restart local v3       #cn:Landroid/content/ComponentName;
    .restart local v5       #iDeviceHeight:I
    .restart local v6       #iDeviceWidth:I
    .restart local v7       #imwList:Lcom/android/server/sec/IMultiWindowList;
    .restart local v8       #isLandscape:Z
    .restart local v9       #item:Lcom/android/server/sec/MWPackageItem;
    .restart local v10       #maxRect:Landroid/graphics/Rect;
    .restart local v13       #rect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v9}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 158
    .local v4, currentRect:Landroid/graphics/Rect;
    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    if-gtz v16, :cond_4

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 159
    const-string v16, "SplitWindowModule"

    const-string v17, "isLeft : true "

    invoke-static/range {v16 .. v17}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v8, :cond_3

    .line 161
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->left:I

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->top:I

    .line 163
    div-int/lit8 v16, v6, 0x2

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->right:I

    .line 164
    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    .line 186
    :goto_2
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v13, v1}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v14

    .line 190
    .local v14, resultItem:Lcom/android/server/sec/MWPackageItem;
    invoke-virtual {v14}, Lcom/android/server/sec/MWPackageItem;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 191
    .local v15, resultRect:Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    invoke-virtual {v15, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 192
    invoke-virtual {v14}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v11

    .line 193
    .local v11, obj:Lcom/android/server/sec/MWClassItem;
    if-eqz v11, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/android/server/sec/MultiWindowActionHandler;->actionPreChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/sec/MultiWindowModule;->mActionHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lcom/android/server/sec/MultiWindowActionHandler;->actionChange(Landroid/sec/multiwindow/IMultiWindowAction;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 166
    .end local v11           #obj:Lcom/android/server/sec/MWClassItem;
    .end local v14           #resultItem:Lcom/android/server/sec/MWPackageItem;
    .end local v15           #resultRect:Landroid/graphics/Rect;
    :cond_3
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->left:I

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->top:I

    .line 168
    iput v6, v13, Landroid/graphics/Rect;->right:I

    .line 169
    div-int/lit8 v16, v5, 0x2

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 172
    :cond_4
    const-string v16, "SplitWindowModule"

    const-string v17, "isLeft : false"

    invoke-static/range {v16 .. v17}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v8, :cond_5

    .line 174
    div-int/lit8 v16, v6, 0x2

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->left:I

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->top:I

    .line 176
    iput v6, v13, Landroid/graphics/Rect;->right:I

    .line 177
    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 179
    :cond_5
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->left:I

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/sec/MultiWindowModule;->statusBarHeight:I

    move/from16 v16, v0

    div-int/lit8 v17, v5, 0x2

    add-int v16, v16, v17

    move/from16 v0, v16

    iput v0, v13, Landroid/graphics/Rect;->top:I

    .line 181
    iput v6, v13, Landroid/graphics/Rect;->right:I

    .line 182
    iput v5, v13, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2
.end method

.method public restore(Landroid/content/ComponentName;)Z
    .locals 10
    .parameter "className"

    .prologue
    const/4 v9, 0x0

    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, Result:Z
    iget-object v7, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 575
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-nez v2, :cond_0

    move v1, v0

    .line 599
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 579
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getRestoreRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 581
    .local v6, restoreRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-eqz v7, :cond_1

    move v1, v0

    .line 582
    .restart local v1       #Result:I
    goto :goto_0

    .line 586
    .end local v1           #Result:I
    :cond_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-nez v7, :cond_3

    .line 587
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v4

    .line 588
    .local v4, miniRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/sec/SplitWindowModule;->getMaximum()Landroid/graphics/Rect;

    move-result-object v3

    .line 589
    .local v3, maxRect:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 590
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v8}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x1e

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v8}, Lcom/android/server/sec/MultiWindowList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x1e

    iget v9, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 593
    .end local v3           #maxRect:Landroid/graphics/Rect;
    .end local v4           #miniRect:Landroid/graphics/Rect;
    :cond_3
    sget-object v7, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v2, v7}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 594
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/sec/SplitWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 595
    .local v5, mwItem:Lcom/android/server/sec/MWPackageItem;
    if-eqz v5, :cond_4

    .line 596
    const/4 v0, 0x1

    :cond_4
    move v1, v0

    .line 599
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public startMultiWindow(Landroid/content/ComponentName;Z)Z
    .locals 7
    .parameter "className"
    .parameter "isMiniMode"

    .prologue
    const/4 v4, 0x0

    .line 91
    const/4 v0, 0x1

    .line 93
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 95
    .local v1, obj:Lcom/android/server/sec/MWPackageItem;
    const-string v5, "SplitWindowModule"

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

    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v1, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    const-string v3, "SplitWindowModule"

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

    .line 100
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowModule;->mEscapedList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/sec/SplitWindowModule;->rePositionOfWindow(Landroid/content/ComponentName;Z)Z

    .line 127
    :cond_0
    return v0

    :cond_1
    move v3, v4

    .line 95
    goto :goto_0

    .line 102
    :cond_2
    const-string v3, "com.diotek.screen_capture"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    const-string v3, "SplitWindowModule"

    const-string v5, "screenCapture Start"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_3
    if-eqz p2, :cond_4

    .line 105
    const-string v3, "SplitWindowModule"

    const-string v5, "start MiniMode"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v3, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .line 109
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_5

    .line 110
    const-string v3, "SplitWindowModule"

    const-string v5, "start RestoreRect"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v3, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->TRUE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->restore(Landroid/content/ComponentName;)Z

    goto :goto_1

    .line 114
    :cond_5
    const-string v3, "SplitWindowModule"

    const-string v5, "start FullScreen"

    invoke-static {v3, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget-object v3, Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;->FALSE:Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;

    invoke-virtual {v1, v3}, Lcom/android/server/sec/MWPackageItem;->setFullScreenLock(Lcom/android/server/sec/MWPackageItem$MultiWindowFlag;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/sec/SplitWindowModule;->maximize(Landroid/content/ComponentName;)Z

    goto :goto_1
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 1
    .parameter "intentCaller"
    .parameter "intentCallee"

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method public startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 1
    .parameter "intentCaller"
    .parameter "intentCallee"

    .prologue
    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/android/server/sec/MultiWindowModule;->mStartingLauncher:Z

    .line 398
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

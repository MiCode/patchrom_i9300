.class public final Landroid/sec/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"

# interfaces
.implements Landroid/sec/multiwindow/IMultiWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/multiwindow/MultiWindowManager$1;,
        Landroid/sec/multiwindow/MultiWindowManager$_handler;,
        Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;
    }
.end annotation


# static fields
.field private static final EX_CLASS_NAME:Ljava/lang/String; = "mwExtraClassName"

.field private static final EX_PACKAGE_NAME:Ljava/lang/String; = "mwExtraPackageName"

.field public static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field private static isUseMultiWindow:Ljava/lang/Boolean;

.field private static mSelf:Landroid/sec/multiwindow/MultiWindowManager;

.field private static mService:Landroid/sec/multiwindow/IMultiWindowService;


# instance fields
.field private mContext:Landroid/content/Context;

.field mwADialog:Landroid/sec/mwdialog/MWAlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    .line 61
    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1492
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    .line 83
    iput-object p1, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method static synthetic access$100()Landroid/sec/multiwindow/IMultiWindowService;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 94
    :cond_0
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    if-nez v0, :cond_1

    .line 95
    if-eqz p0, :cond_1

    .line 96
    const-string/jumbo v0, "multiwindow"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/multiwindow/MultiWindowManager;

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    .line 97
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_1

    .line 98
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    iput-object p0, v0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    .line 101
    :cond_1
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->mSelf:Landroid/sec/multiwindow/MultiWindowManager;

    goto :goto_0
.end method

.method private static getService()Landroid/sec/multiwindow/IMultiWindowService;
    .locals 2

    .prologue
    .line 67
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    .line 74
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 71
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "multiwindow"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v1

    sput-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    .line 74
    sget-object v1, Landroid/sec/multiwindow/MultiWindowManager;->mService:Landroid/sec/multiwindow/IMultiWindowService;

    goto :goto_0
.end method

.method private initFreestyleModeLayout(Landroid/app/Activity;)Z
    .locals 22
    .parameter "activity"

    .prologue
    .line 1242
    const/4 v13, 0x0

    .line 1244
    .local v13, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    .line 1246
    .local v2, className:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 1247
    .local v11, myWindow:Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    .line 1249
    .local v8, myDecoView:Landroid/view/View;
    const-string v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[sendResumeAction]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v7, 0x0

    .line 1252
    .local v7, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/sec/multiwindow/IMultiWindowService;->changFocus(Landroid/content/ComponentName;)V

    .line 1253
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 1263
    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 1264
    .local v9, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    if-nez v7, :cond_0

    .line 1265
    const-string v19, "MultiWindowManager"

    const-string/jumbo v20, "onResumeAction - mwObj = null  is not multiwindow"

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1339
    .end local v9           #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #result:Z
    .local v14, result:I
    :goto_0
    return v14

    .line 1254
    .end local v14           #result:I
    .restart local v13       #result:Z
    :catch_0
    move-exception v3

    .line 1255
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v19, "MultiWindowManager"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v3}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v14, v13

    .line 1256
    .restart local v14       #result:I
    goto :goto_0

    .line 1257
    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v14           #result:I
    :catch_1
    move-exception v4

    .line 1258
    .local v4, e3:Landroid/os/RemoteException;
    const-string v19, "MultiWindowManager"

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    const-string v19, "MultiWindowManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "onResumeAction - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Error : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    .line 1260
    .restart local v14       #result:I
    goto :goto_0

    .line 1270
    .end local v4           #e3:Landroid/os/RemoteException;
    .end local v14           #result:I
    .restart local v9       #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v19, 0x1020389

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1271
    .local v16, windowContentFrame:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1272
    const v19, 0x102038a

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1274
    .local v12, overWrapFrame:Landroid/widget/LinearLayout;
    const v19, 0x102038e

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    .line 1275
    .local v17, windowResize:Landroid/widget/ImageButton;
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1276
    const/4 v6, 0x0

    .line 1277
    .local v6, minimizeButton:Landroid/widget/ImageButton;
    const/4 v5, 0x0

    .line 1278
    .local v5, maximizeButton:Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1279
    const v19, 0x102038f

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 1280
    .local v18, windowTitleBar:Landroid/widget/RelativeLayout;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1282
    const v19, 0x1020393

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    check-cast v6, Landroid/widget/ImageButton;

    .line 1283
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    const v19, 0x1020392

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    check-cast v5, Landroid/widget/ImageButton;

    .line 1287
    .end local v18           #windowTitleBar:Landroid/widget/RelativeLayout;
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    :cond_1
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1288
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1289
    const v19, 0x1080519

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1290
    const/16 v19, 0x1

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1291
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1293
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1294
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1324
    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    .end local v12           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v16           #windowContentFrame:Landroid/widget/LinearLayout;
    .end local v17           #windowResize:Landroid/widget/ImageButton;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1326
    .local v10, myRect:Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1327
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1328
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1329
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1330
    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    .line 1331
    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    .line 1333
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/WindowManagerImpl;->getRootView(Landroid/view/View;)Landroid/view/ViewRootImpl;

    move-result-object v15

    .line 1334
    .local v15, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v15, :cond_3

    .line 1335
    invoke-virtual {v15, v9}, Landroid/view/ViewRootImpl;->forceRelayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 1336
    const/4 v13, 0x1

    :cond_3
    move v14, v13

    .line 1339
    .restart local v14       #result:I
    goto/16 :goto_0

    .line 1296
    .end local v10           #myRect:Landroid/graphics/Rect;
    .end local v14           #result:I
    .end local v15           #viewRoot:Landroid/view/ViewRootImpl;
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v12       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v16       #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v17       #windowResize:Landroid/widget/ImageButton;
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->hasFixedSizeList()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v7}, Landroid/sec/multiwindow/MultiWindowObject;->getFixedSizeList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1297
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1298
    const v19, 0x108050c

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1299
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1300
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x10

    or-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1301
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1303
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1304
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1305
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1306
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1321
    .end local v5           #maximizeButton:Landroid/widget/ImageButton;
    .end local v6           #minimizeButton:Landroid/widget/ImageButton;
    .end local v12           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v16           #windowContentFrame:Landroid/widget/LinearLayout;
    .end local v17           #windowResize:Landroid/widget/ImageButton;
    :catch_2
    move-exception v19

    goto/16 :goto_1

    .line 1309
    .restart local v5       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v6       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v12       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v16       #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v17       #windowResize:Landroid/widget/ImageButton;
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1310
    const v19, 0x108050c

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1311
    const/16 v19, 0x2

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1312
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    const/high16 v20, 0x10

    or-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1313
    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1315
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1316
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1317
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1318
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1
.end method

.method private initSplitMode(Landroid/app/Activity;)Z
    .locals 26
    .parameter "activity"

    .prologue
    .line 1094
    const/16 v17, 0x0

    .line 1096
    .local v17, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1098
    .local v3, className:Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 1099
    .local v13, myWindow:Landroid/view/Window;
    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    .line 1102
    .local v10, myDecoView:Landroid/view/View;
    const-string v23, "MultiWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[sendResumeAction]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", activity TASK ID : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getTaskId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v9, 0x0

    .line 1105
    .local v9, mwObj:Landroid/sec/multiwindow/MultiWindowObject;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/sec/multiwindow/IMultiWindowService;->changFocus(Landroid/content/ComponentName;)V

    .line 1106
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/sec/multiwindow/IMultiWindowService;->getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1116
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 1117
    .local v11, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    if-nez v9, :cond_0

    .line 1118
    const-string v23, "MultiWindowManager"

    const-string/jumbo v24, "onResumeAction - mwObj = null  is not multiwindow"

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v17

    .line 1234
    .end local v11           #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v17           #result:Z
    .local v18, result:I
    :goto_0
    return v18

    .line 1107
    .end local v18           #result:I
    .restart local v17       #result:Z
    :catch_0
    move-exception v5

    .line 1108
    .local v5, e3:Landroid/os/RemoteException;
    const-string v23, "MultiWindowManager"

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    const-string v23, "MultiWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "onResumeAction - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Error : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v17

    .line 1110
    .restart local v18       #result:I
    goto :goto_0

    .line 1111
    .end local v5           #e3:Landroid/os/RemoteException;
    .end local v18           #result:I
    :catch_1
    move-exception v4

    .line 1112
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v23, "MultiWindowManager"

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v18, v17

    .line 1113
    .restart local v18       #result:I
    goto :goto_0

    .line 1124
    .end local v4           #e:Ljava/lang/NullPointerException;
    .end local v18           #result:I
    .restart local v11       #myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v23, 0x1020389

    :try_start_1
    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 1125
    .local v21, windowContentFrame:Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    const v23, 0x102038a

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1130
    .local v15, overWrapFrame:Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .line 1131
    .local v8, minimizeButton:Landroid/widget/ImageButton;
    const/4 v7, 0x0

    .line 1132
    .local v7, maximizeButton:Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1133
    const v23, 0x102038f

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    .line 1134
    .local v22, windowTitleBar:Landroid/widget/RelativeLayout;
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1136
    const v23, 0x1020393

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    check-cast v8, Landroid/widget/ImageButton;

    .line 1137
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    const v23, 0x1020392

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    check-cast v7, Landroid/widget/ImageButton;

    .line 1141
    .end local v22           #windowTitleBar:Landroid/widget/RelativeLayout;
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    :cond_1
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1143
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1144
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1146
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1147
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1148
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1180
    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_2
    :goto_1
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->getMultiWindowRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1182
    .local v12, myRect:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getRotation()I

    move-result v14

    .line 1184
    .local v14, orientation:I
    const v23, 0x1020387

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 1185
    .local v6, l:Landroid/widget/ImageButton;
    const v23, 0x1020388

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageButton;

    .line 1186
    .local v19, t:Landroid/widget/ImageButton;
    const v23, 0x102038c

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageButton;

    .line 1187
    .local v16, r:Landroid/widget/ImageButton;
    const v23, 0x102038b

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1189
    .local v2, b:Landroid/widget/ImageButton;
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->isFullScreen()Z

    move-result v23

    if-nez v23, :cond_9

    .line 1190
    rem-int/lit8 v23, v14, 0x2

    if-nez v23, :cond_7

    .line 1191
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 1192
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1193
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1194
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1195
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1222
    :goto_2
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1223
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1224
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1225
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1226
    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 1227
    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 1229
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/WindowManagerImpl;->getRootView(Landroid/view/View;)Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 1230
    .local v20, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_3

    .line 1231
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl;->forceRelayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 1232
    const/16 v17, 0x1

    :cond_3
    move/from16 v18, v17

    .line 1234
    .restart local v18       #result:I
    goto/16 :goto_0

    .line 1150
    .end local v2           #b:Landroid/widget/ImageButton;
    .end local v6           #l:Landroid/widget/ImageButton;
    .end local v12           #myRect:Landroid/graphics/Rect;
    .end local v14           #orientation:I
    .end local v16           #r:Landroid/widget/ImageButton;
    .end local v18           #result:I
    .end local v19           #t:Landroid/widget/ImageButton;
    .end local v20           #viewRoot:Landroid/view/ViewRootImpl;
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v15       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v21       #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_4
    :try_start_2
    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->hasFixedSizeList()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual {v9}, Landroid/sec/multiwindow/MultiWindowObject;->getFixedSizeList()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 1151
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1154
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1155
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    const/high16 v24, 0x10

    or-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1156
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1160
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1161
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    .line 1177
    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    :catch_2
    move-exception v23

    goto/16 :goto_1

    .line 1164
    .restart local v7       #maximizeButton:Landroid/widget/ImageButton;
    .restart local v8       #minimizeButton:Landroid/widget/ImageButton;
    .restart local v15       #overWrapFrame:Landroid/widget/LinearLayout;
    .restart local v21       #windowContentFrame:Landroid/widget/LinearLayout;
    :cond_5
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1167
    const/16 v23, 0x2

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->windowMode:I

    .line 1168
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    const/high16 v24, 0x10

    or-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1169
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiLayout()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1173
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1174
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1197
    .end local v7           #maximizeButton:Landroid/widget/ImageButton;
    .end local v8           #minimizeButton:Landroid/widget/ImageButton;
    .end local v15           #overWrapFrame:Landroid/widget/LinearLayout;
    .end local v21           #windowContentFrame:Landroid/widget/LinearLayout;
    .restart local v2       #b:Landroid/widget/ImageButton;
    .restart local v6       #l:Landroid/widget/ImageButton;
    .restart local v12       #myRect:Landroid/graphics/Rect;
    .restart local v14       #orientation:I
    .restart local v16       #r:Landroid/widget/ImageButton;
    .restart local v19       #t:Landroid/widget/ImageButton;
    :cond_6
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1198
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1199
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1200
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1203
    :cond_7
    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 1204
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1205
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1206
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1207
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1209
    :cond_8
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1210
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1211
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1212
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2

    .line 1216
    :cond_9
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1217
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1218
    const/16 v23, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1219
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private static isMultiWindowServiceEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 855
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 865
    :goto_0
    return v1

    .line 859
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindowServiceEnabled()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 863
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 864
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mode remote error (hasSpliteMode): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isMultiWindowServiceEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 877
    .local v0, result:Z
    if-nez p0, :cond_0

    move v1, v0

    .line 890
    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .line 880
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 881
    .restart local v1       #result:I
    goto :goto_0

    .line 888
    .end local v1           #result:I
    :cond_1
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled()Z

    move-result v0

    move v1, v0

    .line 890
    .restart local v1       #result:I
    goto :goto_0
.end method

.method private static readConfig(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 894
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 895
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    .line 896
    const-string v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readConfig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    sget-object v0, Landroid/sec/multiwindow/MultiWindowManager;->isUseMultiWindow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public arrangeWindows(I)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 973
    const/4 v1, 0x0

    .line 975
    .local v1, result:Z
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    move v2, v1

    .line 987
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 979
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->arrangeWindows(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 987
    .restart local v2       #result:I
    goto :goto_0

    .line 980
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 982
    .restart local v2       #result:I
    goto :goto_0

    .line 983
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 984
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 985
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public capture(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "className"

    .prologue
    .line 810
    const/4 v1, 0x0

    .line 812
    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, p1, v4}, Landroid/sec/multiwindow/IMultiWindowService;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 820
    .end local v1           #result:Landroid/graphics/Bitmap;
    .local v2, result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 813
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 814
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 815
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 816
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 817
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 818
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public exchangeSplitScreens()Z
    .locals 5

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 790
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 803
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 795
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->exchangeSplitScreens()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 803
    .restart local v2       #result:I
    goto :goto_0

    .line 796
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 797
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 798
    .restart local v2       #result:I
    goto :goto_0

    .line 799
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 800
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 801
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public finishAllWindow()Z
    .locals 5

    .prologue
    .line 537
    const/4 v1, 0x0

    .line 539
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->finishAllWindow()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 547
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 540
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 542
    .restart local v2       #result:I
    goto :goto_0

    .line 543
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 545
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public finishAppPid(I)Z
    .locals 5
    .parameter "pid"

    .prologue
    .line 552
    const/4 v1, 0x0

    .line 554
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->finishAppPid(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 562
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 555
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 557
    .restart local v2       #result:I
    goto :goto_0

    .line 558
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 559
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 560
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getMultiLayout()Z
    .locals 5

    .prologue
    .line 840
    const/4 v1, 0x0

    .line 842
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiLayout()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 850
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 843
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 845
    .restart local v2       #result:I
    goto :goto_0

    .line 846
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 847
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 848
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public getMultiWindowList()Ljava/util/List;
    .locals 7
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
    .line 306
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v0, 0x0

    .line 310
    .local v0, Items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 321
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 329
    :goto_0
    return-object v3

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 315
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 322
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 323
    .local v2, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMultiWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 326
    .end local v2           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getMultiWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMultiWindowList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .parameter "owner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    const/4 v1, 0x0

    .line 395
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowListOwner(Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 403
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .line 396
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 398
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .line 399
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .line 400
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 401
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getMultiWindowListOwnerList()Ljava/util/List;
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
    .line 407
    const/4 v1, 0x0

    .line 409
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowListOwnerList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 417
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v2

    .line 410
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 412
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0

    .line 413
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v1       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :catch_1
    move-exception v0

    .line 414
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 415
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v2       #result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;
    .locals 5

    .prologue
    .line 125
    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    .line 127
    .local v1, result:Landroid/sec/multiwindow/MultiWindowType;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getMultiWindowType()I

    move-result v3

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowType;->getValidType(I)Landroid/sec/multiwindow/MultiWindowType;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 135
    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .local v2, result:Landroid/sec/multiwindow/MultiWindowType;
    :goto_0
    return-object v2

    .line 128
    .end local v2           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v1       #result:Landroid/sec/multiwindow/MultiWindowType;
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 130
    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v2       #result:Landroid/sec/multiwindow/MultiWindowType;
    goto :goto_0

    .line 131
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v1       #result:Landroid/sec/multiwindow/MultiWindowType;
    :catch_1
    move-exception v0

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 133
    .end local v1           #result:Landroid/sec/multiwindow/MultiWindowType;
    .restart local v2       #result:Landroid/sec/multiwindow/MultiWindowType;
    goto :goto_0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 643
    const/4 v1, 0x0

    .line 644
    .local v1, result:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    move-object v2, v1

    .line 656
    .end local v1           #result:Landroid/content/ComponentName;
    .local v2, result:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 648
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getPinupWindow()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 656
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .line 649
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 650
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 651
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .line 652
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .line 653
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 654
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, result:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->getResumedWindow()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 532
    .end local v1           #result:Landroid/content/ComponentName;
    .local v2, result:Landroid/content/ComponentName;
    :goto_0
    return-object v2

    .line 525
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 526
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 527
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0

    .line 528
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/content/ComponentName;
    .restart local v1       #result:Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .line 529
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 530
    .end local v1           #result:Landroid/content/ComponentName;
    .restart local v2       #result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getRunningWindowList()Ljava/util/List;
    .locals 7
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
    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .line 441
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getRunningWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 450
    if-eqz v2, :cond_0

    .line 452
    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 460
    :goto_0
    return-object v3

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 445
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 446
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRunningWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 453
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 454
    .local v1, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRunningWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 457
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getRunningWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .locals 7
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
    .line 480
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v2, 0x0

    .line 484
    .local v2, items:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/multiwindow/IMultiWindowService;->getVisibleWindowList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 493
    if-eqz v2, :cond_0

    .line 495
    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 502
    :goto_0
    return-object v3

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 488
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVisibleWindowList error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 496
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 497
    .local v1, e1:Ljava/lang/Exception;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVisibleWindowList error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 500
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_0
    const-string v4, "MultiWindowManager"

    const-string v5, "getVisibleWindowList is null!"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 2
    .parameter "className"

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    return-object v1
.end method

.method public getWindowInstance(Landroid/content/Intent;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 7
    .parameter "intent"

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, res:Landroid/sec/multiwindow/MultiWindow;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 150
    .local v0, className:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 164
    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .local v2, res:Landroid/sec/multiwindow/MultiWindow;
    :goto_0
    return-object v2

    .line 154
    .end local v2           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregistered is a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 156
    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v2       #res:Landroid/sec/multiwindow/MultiWindow;
    goto :goto_0

    .line 159
    .end local v2           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_1
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    .line 161
    .local v3, winType:Landroid/sec/multiwindow/MultiWindowType;
    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v4}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    new-instance v1, Landroid/sec/multiwindow/MultiWindow;

    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    iget-object v4, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-direct {v1, v4, v5, p1}, Landroid/sec/multiwindow/MultiWindow;-><init>(Landroid/content/Context;Landroid/sec/multiwindow/IMultiWindowService;Landroid/content/Intent;)V

    .restart local v1       #res:Landroid/sec/multiwindow/MultiWindow;
    :cond_2
    move-object v2, v1

    .line 164
    .end local v1           #res:Landroid/sec/multiwindow/MultiWindow;
    .restart local v2       #res:Landroid/sec/multiwindow/MultiWindow;
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 336
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 344
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 337
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 339
    .restart local v2       #result:I
    goto :goto_0

    .line 340
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 341
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 342
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "className"

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 431
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 424
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 426
    .restart local v2       #result:I
    goto :goto_0

    .line 427
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 428
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 429
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isPermissionOff()Z
    .locals 5

    .prologue
    .line 1513
    const/4 v1, 0x0

    .line 1515
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 1527
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1519
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindowService;->isPermissionOff()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1527
    .restart local v2       #result:I
    goto :goto_0

    .line 1520
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1521
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1522
    .restart local v2       #result:I
    goto :goto_0

    .line 1523
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 1524
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1525
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isRunning(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 475
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 468
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 470
    .restart local v2       #result:I
    goto :goto_0

    .line 471
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 472
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 473
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 509
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->isVisible(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 517
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 510
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 512
    .restart local v2       #result:I
    goto :goto_0

    .line 513
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 514
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 515
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifyFinished(Landroid/app/Activity;)Z
    .locals 6
    .parameter "selfActivity"

    .prologue
    .line 623
    const/4 v2, 0x0

    .line 625
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .line 638
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 628
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 630
    .local v0, className:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->notifyFinished(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 638
    .restart local v3       #result:I
    goto :goto_0

    .line 631
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 632
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 633
    .restart local v3       #result:I
    goto :goto_0

    .line 634
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 635
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 636
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public notifyForceFinished(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 954
    const/4 v1, 0x0

    .line 956
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 968
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 960
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->notifyForceFinished(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 968
    .restart local v2       #result:I
    goto :goto_0

    .line 961
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 963
    .restart local v2       #result:I
    goto :goto_0

    .line 964
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 965
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 966
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifySIP(I)Z
    .locals 5
    .parameter "height"

    .prologue
    .line 1532
    const/4 v1, 0x0

    .line 1534
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 1547
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1538
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->notifySIP(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1547
    .restart local v2       #result:I
    goto :goto_0

    .line 1539
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1540
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1541
    .restart local v2       #result:I
    goto :goto_0

    .line 1542
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 1543
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1544
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public notifyStarted(Landroid/app/Activity;)Z
    .locals 10
    .parameter "selfActivity"

    .prologue
    const/4 v9, -0x1

    .line 584
    const/4 v5, 0x0

    .line 586
    .local v5, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v7

    sget-object v8, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v7, v8, :cond_0

    move v6, v5

    .line 618
    .end local v5           #result:Z
    .local v6, result:I
    :goto_0
    return v6

    .line 589
    .end local v6           #result:I
    .restart local v5       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 593
    .local v0, className:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 594
    .local v4, myWindow:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 595
    .local v3, myLayoutParams:Landroid/view/WindowManager$LayoutParams;
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v7, v9, :cond_1

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v7, v9, :cond_2

    :cond_1
    move v6, v5

    .line 596
    .restart local v6       #result:I
    goto :goto_0

    .line 599
    .end local v6           #result:I
    :cond_2
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 600
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 602
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v7, v8, :cond_3

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v7, v8, :cond_4

    .line 603
    :cond_3
    invoke-virtual {p0, v0}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 605
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v7

    new-instance v8, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-direct {v8, p0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;-><init>(Landroid/sec/multiwindow/MultiWindowManager;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v9

    invoke-interface {v7, v0, v8, v9}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v5

    .line 606
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v8

    invoke-interface {v7, v0, v8}, Landroid/sec/multiwindow/IMultiWindowService;->notifyStarted(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    move v6, v5

    .line 618
    .restart local v6       #result:I
    goto :goto_0

    .line 608
    .end local v6           #result:I
    :catch_0
    move-exception v2

    .line 609
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v7, "MultiWindowManager"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v5

    .line 610
    .restart local v6       #result:I
    goto :goto_0

    .line 611
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v6           #result:I
    :catch_1
    move-exception v2

    .line 612
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v5

    .line 613
    .restart local v6       #result:I
    goto :goto_0
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .locals 5
    .parameter "cName"
    .parameter "orientation"

    .prologue
    .line 661
    const/4 v1, 0x0

    .line 663
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 679
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 666
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .line 667
    .restart local v2       #result:I
    goto :goto_0

    .line 671
    .end local v2           #result:I
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->orientationChangeRestore(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 679
    .restart local v2       #result:I
    goto :goto_0

    .line 672
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 674
    .restart local v2       #result:I
    goto :goto_0

    .line 675
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 676
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 677
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public postResume(Landroid/app/Activity;)Z
    .locals 6
    .parameter "activity"

    .prologue
    .line 992
    const/4 v2, 0x0

    .line 994
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .line 1008
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 997
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1000
    .local v0, className:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v4, v0, v5}, Landroid/sec/multiwindow/IMultiWindowService;->postResume(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 1008
    .restart local v3       #result:I
    goto :goto_0

    .line 1001
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 1002
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1003
    .restart local v3       #result:I
    goto :goto_0

    .line 1004
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 1005
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1006
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "className"

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 185
    .local v1, result:Landroid/sec/multiwindow/IMultiWindow;
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v1

    move-object v2, v1

    .line 197
    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .local v2, result:Landroid/sec/multiwindow/IMultiWindow;
    :goto_0
    return-object v2

    .line 188
    .end local v2           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v1       #result:Landroid/sec/multiwindow/IMultiWindow;
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 190
    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #result:Landroid/sec/multiwindow/IMultiWindow;
    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v1       #result:Landroid/sec/multiwindow/IMultiWindow;
    :catch_1
    move-exception v0

    .line 192
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 193
    .end local v1           #result:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #result:Landroid/sec/multiwindow/IMultiWindow;
    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;II)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "className"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    const/4 v2, 0x0

    .line 216
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :cond_1
    const/4 v1, 0x0

    .line 221
    .local v1, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowWithMin(Landroid/content/ComponentName;II)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 229
    if-nez v1, :cond_2

    .line 230
    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registerMultiWindow2 fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_2
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v2

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;IIZ)Landroid/sec/multiwindow/IMultiWindow;
    .locals 5
    .parameter "className"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isfixedRatio"

    .prologue
    const/4 v2, 0x0

    .line 238
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-object v2

    .line 241
    :cond_1
    const/4 v1, 0x0

    .line 243
    .local v1, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowWithMinAndRatio(Landroid/content/ComponentName;IIZ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 251
    if-nez v1, :cond_2

    .line 252
    const-string v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " registerMultiWindow3 fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v2

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 248
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;Ljava/util/List;)Landroid/sec/multiwindow/IMultiWindow;
    .locals 10
    .parameter "className"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;)",
            "Landroid/sec/multiwindow/IMultiWindow;"
        }
    .end annotation

    .prologue
    .local p2, windowSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 260
    if-nez p2, :cond_0

    .line 286
    :goto_0
    return-object v5

    .line 263
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v3, minSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 265
    .local v2, item:Landroid/graphics/Point;
    iget v6, v2, Landroid/graphics/Point;->x:I

    if-ltz v6, :cond_1

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-ltz v6, :cond_1

    .line 267
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Point;->x:I

    iget v8, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    .end local v2           #item:Landroid/graphics/Point;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_3

    .line 271
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    goto :goto_0

    .line 273
    :cond_3
    const/4 v4, 0x0

    .line 275
    .local v4, res:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v6

    invoke-interface {v6, p1, v3}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowOwnerWithMinList(Landroid/content/ComponentName;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 283
    if-nez v4, :cond_4

    .line 284
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " registerMultiWindow4 fail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_4
    invoke-virtual {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v5

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 279
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "className"

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 351
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->registerMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 359
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 352
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 354
    .restart local v2       #result:I
    goto :goto_0

    .line 355
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 356
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 357
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindow(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 301
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 294
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 296
    .restart local v2       #result:I
    goto :goto_0

    .line 297
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 299
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 388
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 381
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 383
    .restart local v2       #result:I
    goto :goto_0

    .line 384
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 385
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 386
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public removeMultiWindowPair(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "owner"
    .parameter "className"

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 366
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->removeMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 374
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 367
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 369
    .restart local v2       #result:I
    goto :goto_0

    .line 370
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 371
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 372
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    .locals 5
    .parameter "className"
    .parameter "mwListener"

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 570
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 578
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 571
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 573
    .restart local v2       #result:I
    goto :goto_0

    .line 574
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 576
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "className"

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, result:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    move-object v2, v1

    .line 178
    .end local v1           #result:Landroid/graphics/Bitmap;
    .local v2, result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 171
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 173
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:Landroid/graphics/Bitmap;
    .restart local v1       #result:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 176
    .end local v1           #result:Landroid/graphics/Bitmap;
    .restart local v2       #result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public sendCreateAction(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    .line 1013
    const/4 v3, 0x0

    .line 1015
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v5, v6, :cond_0

    move v4, v3

    .line 1034
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 1018
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1021
    .local v0, className:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1022
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1023
    .local v2, pid:I
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/sec/multiwindow/IMultiWindowService;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    .line 1024
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    new-instance v6, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;

    invoke-direct {v6, p0, p1}, Landroid/sec/multiwindow/MultiWindowManager$MultiWindowAction;-><init>(Landroid/sec/multiwindow/MultiWindowManager;Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v7

    invoke-interface {v5, v0, v6, v7}, Landroid/sec/multiwindow/IMultiWindowService;->regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .end local v2           #pid:I
    :cond_1
    move v4, v3

    .line 1034
    .restart local v4       #result:I
    goto :goto_0

    .line 1026
    .end local v4           #result:I
    :catch_0
    move-exception v1

    .line 1027
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 1028
    .restart local v4       #result:I
    goto :goto_0

    .line 1029
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v1

    .line 1030
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1031
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendCreateAction - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 1032
    .restart local v4       #result:I
    goto :goto_0
.end method

.method public sendDestroyAction(Landroid/app/Activity;)Z
    .locals 6
    .parameter "activity"

    .prologue
    .line 1394
    const/4 v1, 0x0

    .line 1396
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 1409
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1400
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/sec/multiwindow/IMultiWindowService;->destroyActivity(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 1409
    .restart local v2       #result:I
    goto :goto_0

    .line 1401
    .end local v2           #result:I
    :catch_0
    move-exception v0

    .line 1402
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1403
    .restart local v2       #result:I
    goto :goto_0

    .line 1404
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 1405
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 1406
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public sendFinishAction(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    .line 1367
    const/4 v3, 0x0

    .line 1369
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v5, v6, :cond_0

    move v4, v3

    .line 1389
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 1372
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    const/4 v0, 0x0

    .line 1375
    .local v0, className:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_1

    .line 1377
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v6

    invoke-interface {v5, v0, v6}, Landroid/sec/multiwindow/IMultiWindowService;->finishActivity(Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :cond_1
    move v4, v3

    .line 1389
    .restart local v4       #result:I
    goto :goto_0

    .line 1379
    .end local v4           #result:I
    :catch_0
    move-exception v1

    .line 1380
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 1381
    .restart local v4       #result:I
    goto :goto_0

    .line 1382
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v2

    .line 1383
    .local v2, ef:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1384
    if-eqz v0, :cond_2

    .line 1385
    const-string v5, "MultiWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finish - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v3

    .line 1386
    .restart local v4       #result:I
    goto :goto_0
.end method

.method public sendPauseAction(Landroid/app/Activity;)Z
    .locals 7
    .parameter "activity"

    .prologue
    .line 1344
    const/4 v2, 0x0

    .line 1346
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v4, v5, :cond_0

    move v3, v2

    .line 1362
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 1349
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1350
    .local v0, className:Landroid/content/ComponentName;
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sendPauseAction]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/sec/multiwindow/IMultiWindowService;->pauseChangeInformation(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 1362
    .restart local v3       #result:I
    goto :goto_0

    .line 1354
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 1355
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1356
    .restart local v3       #result:I
    goto :goto_0

    .line 1357
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v1

    .line 1358
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 1359
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public sendResumeAction(Landroid/app/Activity;)Z
    .locals 4
    .parameter "activity"

    .prologue
    .line 1068
    const/4 v0, 0x0

    .line 1070
    .local v0, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v3, :cond_0

    move v1, v0

    .line 1086
    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .line 1073
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 1074
    .restart local v1       #result:I
    goto :goto_0

    .line 1077
    .end local v1           #result:I
    :cond_1
    sget-object v2, Landroid/sec/multiwindow/MultiWindowManager$1;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 1086
    .restart local v1       #result:I
    goto :goto_0

    .line 1079
    .end local v1           #result:I
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->initSplitMode(Landroid/app/Activity;)Z

    move-result v0

    .line 1080
    goto :goto_1

    .line 1082
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/sec/multiwindow/MultiWindowManager;->initFreestyleModeLayout(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_1

    .line 1077
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendStartAction(Landroid/app/Activity;)Z
    .locals 10
    .parameter "activity"

    .prologue
    .line 1039
    const/4 v4, 0x0

    .line 1041
    .local v4, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v7

    sget-object v8, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v7, v8, :cond_0

    move v5, v4

    .line 1062
    .end local v4           #result:Z
    .local v5, result:I
    :goto_0
    return v5

    .line 1044
    .end local v5           #result:I
    .restart local v4       #result:Z
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1047
    .local v0, className:Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/sec/multiwindow/IMultiWindowService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1048
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1049
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1050
    .local v6, sAction:Ljava/lang/String;
    const-string v7, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1051
    .local v3, isMiniMode:Z
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Landroid/sec/multiwindow/IMultiWindowService;->startMultiWindow(Landroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #isMiniMode:Z
    .end local v6           #sAction:Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 1062
    .restart local v5       #result:I
    goto :goto_0

    .line 1053
    .end local v5           #result:I
    :catch_0
    move-exception v1

    .line 1054
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v7, "MultiWindowManager"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v4

    .line 1055
    .restart local v5       #result:I
    goto :goto_0

    .line 1056
    .end local v1           #e:Ljava/lang/NullPointerException;
    .end local v5           #result:I
    :catch_1
    move-exception v1

    .line 1057
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "MultiWindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    const-string v7, "MultiWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendStartAction - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 1059
    .restart local v5       #result:I
    goto :goto_0
.end method

.method public setMultiLayout(Z)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 827
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/sec/multiwindow/IMultiWindowService;->setMultiLayout(Z)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 835
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 828
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 830
    .restart local v2       #result:I
    goto :goto_0

    .line 831
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 832
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 833
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public setMultiWindowMode(Landroid/sec/multiwindow/MultiWindowType;)Z
    .locals 5
    .parameter "winType"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, result:Z
    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/MultiWindowManager;->readConfig(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    sget-object p1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    .line 112
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v3

    invoke-virtual {p1}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowService;->setMultiWindowType(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    move v2, v1

    .line 120
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 113
    .end local v2           #result:I
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 115
    .restart local v2       #result:I
    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v2           #result:I
    :catch_1
    move-exception v0

    .line 117
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 118
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher()Z
    .locals 5

    .prologue
    .line 1414
    const/4 v1, 0x0

    .line 1416
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 1418
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1426
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1422
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWDialog;

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/sec/mwdialog/MWDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1423
    .local v0, mwDialog:Landroid/sec/mwdialog/MWDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->show()V

    .line 1424
    const/4 v1, 0x1

    move v2, v1

    .line 1426
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "selfClassName"

    .prologue
    .line 1446
    const/4 v1, 0x0

    .line 1447
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 1449
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1457
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1453
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWDialog;

    iget-object v3, p0, Landroid/sec/multiwindow/MultiWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/sec/mwdialog/MWDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1454
    .local v0, mwDialog:Landroid/sec/mwdialog/MWDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWDialog;->show()V

    .line 1455
    const/4 v1, 0x1

    move v2, v1

    .line 1457
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 1478
    const/4 v1, 0x0

    .line 1479
    .local v1, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_0

    .line 1481
    const-string v3, "MultiWindowManager"

    const-string v4, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1489
    .end local v1           #result:Z
    .local v2, result:I
    :goto_0
    return v2

    .line 1485
    .end local v2           #result:I
    .restart local v1       #result:Z
    :cond_0
    new-instance v0, Landroid/sec/mwdialog/MWAlertDialog;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Landroid/sec/mwdialog/MWAlertDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1486
    .local v0, mwDialog:Landroid/sec/mwdialog/MWAlertDialog;
    invoke-virtual {v0}, Landroid/sec/mwdialog/MWAlertDialog;->show()Landroid/app/AlertDialog;

    .line 1487
    const/4 v1, 0x1

    move v2, v1

    .line 1489
    .restart local v2       #result:I
    goto :goto_0
.end method

.method public startLauncher(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "context"
    .parameter "selfClassName"

    .prologue
    .line 1495
    const/4 v0, 0x0

    .line 1496
    .local v0, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v2, v3, :cond_0

    .line 1498
    const-string v2, "MultiWindowManager"

    const-string v3, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1508
    .end local v0           #result:Z
    .local v1, result:I
    :goto_0
    return v1

    .line 1502
    .end local v1           #result:I
    .restart local v0       #result:Z
    :cond_0
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    iget-boolean v2, v2, Landroid/sec/mwdialog/MWAlertDialog;->launcherTimer:Z

    if-nez v2, :cond_2

    .line 1503
    :cond_1
    new-instance v2, Landroid/sec/mwdialog/MWAlertDialog;

    invoke-direct {v2, p1, p2}, Landroid/sec/mwdialog/MWAlertDialog;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    .line 1504
    iget-object v2, p0, Landroid/sec/multiwindow/MultiWindowManager;->mwADialog:Landroid/sec/mwdialog/MWAlertDialog;

    invoke-virtual {v2}, Landroid/sec/mwdialog/MWAlertDialog;->show()Landroid/app/AlertDialog;

    .line 1507
    :cond_2
    const/4 v0, 0x1

    move v1, v0

    .line 1508
    .restart local v1       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 684
    const/4 v3, 0x0

    .line 685
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v5, v6, :cond_0

    .line 687
    const-string v5, "MultiWindowManager"

    const-string v6, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 706
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 691
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 694
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 695
    .local v2, intentRight:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 698
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v4, v3

    .line 706
    .restart local v4       #result:I
    goto :goto_0

    .line 699
    .end local v4           #result:I
    :catch_0
    move-exception v0

    .line 700
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 701
    .restart local v4       #result:I
    goto :goto_0

    .line 702
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v0

    .line 703
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 704
    .restart local v4       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/ComponentName;Landroid/content/Intent;)Z
    .locals 6
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 711
    const/4 v2, 0x0

    .line 712
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v4, v5, :cond_0

    .line 714
    const-string v4, "MultiWindowManager"

    const-string v5, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 730
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 718
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 722
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, v1, p2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 730
    .restart local v3       #result:I
    goto :goto_0

    .line 723
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 724
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 725
    .restart local v3       #result:I
    goto :goto_0

    .line 726
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v0

    .line 727
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 728
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 735
    const/4 v2, 0x0

    .line 736
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v4, v5, :cond_0

    .line 738
    const-string v4, "MultiWindowManager"

    const-string v5, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 755
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 742
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 743
    .local v1, intentRight:Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 746
    :try_start_0
    const-string v4, "MultiWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[startSplitScreens] Right : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    move v3, v2

    .line 755
    .restart local v3       #result:I
    goto :goto_0

    .line 748
    .end local v3           #result:I
    :catch_0
    move-exception v0

    .line 749
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 750
    .restart local v3       #result:I
    goto :goto_0

    .line 751
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #result:I
    :catch_1
    move-exception v0

    .line 752
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    .line 753
    .restart local v3       #result:I
    goto :goto_0
.end method

.method public startSplitScreensForLauncher(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "Left"
    .parameter "Right"

    .prologue
    .line 760
    const/4 v3, 0x0

    .line 761
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/sec/multiwindow/MultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v5

    sget-object v6, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v5, v6, :cond_0

    .line 763
    const-string v5, "MultiWindowManager"

    const-string v6, "[startSplitScreens] This API want MultiWindowType.eSplitWindow "

    invoke-static {v5, v6}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 782
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 767
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 768
    .local v1, intentLeft:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 770
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 771
    .local v2, intentRight:Landroid/content/Intent;
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 774
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/sec/multiwindow/IMultiWindowService;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    move v4, v3

    .line 782
    .restart local v4       #result:I
    goto :goto_0

    .line 775
    .end local v4           #result:I
    :catch_0
    move-exception v0

    .line 776
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 777
    .restart local v4       #result:I
    goto :goto_0

    .line 778
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v4           #result:I
    :catch_1
    move-exception v0

    .line 779
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 780
    .restart local v4       #result:I
    goto :goto_0
.end method

.method public unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 205
    .local v1, result:Z
    :try_start_0
    invoke-static {}, Landroid/sec/multiwindow/MultiWindowManager;->getService()Landroid/sec/multiwindow/IMultiWindowService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/multiwindow/IMultiWindowService;->unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 210
    :goto_0
    return v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MultiWindowManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/sec/multiwindow/MWlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

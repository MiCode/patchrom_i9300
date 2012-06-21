.class public Lcom/android/server/sec/MultiWindowManagerService;
.super Landroid/sec/multiwindow/IMultiWindowService$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/MultiWindowManagerService$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/sec/MultiWindowManagerService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

.field private mMultiLayoutUsed:Z

.field private mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

.field private mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowType:Landroid/sec/multiwindow/MultiWindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/sec/multiwindow/IMultiWindowService$Stub;-><init>()V

    .line 49
    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    .line 54
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    .line 64
    new-instance v3, Lcom/android/server/sec/MultiWindowActionHandler;

    invoke-direct {v3}, Lcom/android/server/sec/MultiWindowActionHandler;-><init>()V

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    .line 75
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    .line 1611
    new-instance v3, Lcom/android/server/sec/MultiWindowManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/sec/MultiWindowManagerService$1;-><init>(Lcom/android/server/sec/MultiWindowManagerService;)V

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    const-string v3, "MultiWindowManagerService"

    const-string v4, "Creator"

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 92
    sput-object p0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    .line 94
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/sec/MultiWindowDataList;->getInstance(Landroid/content/Context;)Lcom/android/server/sec/MultiWindowDataList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 98
    .local v2, isUseMultiWindow:Z
    const-string v3, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUseMultiWindow : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz v2, :cond_0

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowManagerService;->setMultiWindowType(I)Z

    .line 110
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 111
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.videoplayer"

    const-string v5, "com.sec.android.app.videoplayer.activity.VPMainTab"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 112
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.snotebook"

    const-string v5, "com.infraware.filemanager.FmFileTreeListActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z

    .line 113
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.infraware.PolarisOfficeStdForTablet"

    const-string v5, "com.infraware.splash.SplashActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/server/sec/MultiWindowManagerService;->registerMultiWindow(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local v1       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/sec/MultiWindowManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowActionHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    return-object v0
.end method

.method private dumpMultiWindowMode(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 1726
    const-string v0, "MULTIWINDOW SERVICE MultiWindowMode (dumpsys multiwindow service)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v0, :cond_0

    .line 1728
    sget-object v0, Lcom/android/server/sec/MultiWindowManagerService$2;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1739
    const-string v0, "    ModeType : eNothing"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1730
    :pswitch_0
    const-string v0, "    ModeType : eSplitWindow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1733
    :pswitch_1
    const-string v0, "    ModeType : eFreestyleWindow"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1736
    :pswitch_2
    const-string v0, "    ModeType : ePhoneWinodw"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpReadConfig(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 1746
    const-string v1, "MULTIWINDOW SERVICE ReadConfig (dumpsys multiwindow service)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1748
    .local v0, isUseMultiWindow:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    config_isMultiWindowEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    return-void
.end method

.method private dumpRegisterList(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 1752
    const-string v3, "MULTIWINDOW SERVICE RegisterList (dumpsys multiwindow service)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    .line 1755
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1756
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sec/MultiWindowDataItem;

    .line 1757
    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    const-string v3, "    Empty List"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    :cond_1
    return-void
.end method

.method private dumpRunningList(Ljava/io/PrintWriter;)V
    .locals 6
    .parameter "pw"

    .prologue
    .line 1765
    const-string v4, "MULTIWINDOW SERVICE RunningList (dumpsys multiwindow service)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {p0}, Lcom/android/server/sec/MultiWindowManagerService;->getRunningWindowList()Ljava/util/List;

    move-result-object v3

    .line 1768
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1770
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1771
    .local v2, item:Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        MinimumSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowManagerService;->getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Visible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/android/server/sec/MultiWindowManagerService;->isVisible(Landroid/content/ComponentName;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v4, :cond_0

    .line 1775
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v1

    .line 1776
    .local v1, im:Lcom/android/server/sec/MWPackageItem;
    if-eqz v1, :cond_0

    .line 1777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "        Info : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \n        "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/sec/MWPackageItem;->toSubString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1781
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #im:Lcom/android/server/sec/MWPackageItem;
    .end local v2           #item:Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 1786
    :cond_1
    :goto_1
    return-void

    .line 1783
    :cond_2
    const-string v4, "    Empty List"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSelf()Lcom/android/server/sec/MultiWindowManagerService;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/server/sec/MultiWindowManagerService;->mSelf:Lcom/android/server/sec/MultiWindowManagerService;

    return-object v0
.end method

.method private isAllMultiWindow(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindowFromAll(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public arrangeWindows(I)Z
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1306
    const/4 v0, 0x0

    .line 1308
    .local v0, Result:Z
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    move v1, v0

    .line 1319
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1311
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v3, v4, :cond_1

    .line 1312
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v2, Lcom/android/server/sec/FreestyleWindowModule;

    .line 1313
    .local v2, fwm:Lcom/android/server/sec/FreestyleWindowModule;
    invoke-virtual {v2, p1}, Lcom/android/server/sec/FreestyleWindowModule;->arrangeWindows(I)Z

    move-result v0

    .end local v2           #fwm:Lcom/android/server/sec/FreestyleWindowModule;
    :goto_1
    move v1, v0

    .line 1319
    .restart local v1       #Result:I
    goto :goto_0

    .line 1316
    .end local v1           #Result:I
    :cond_1
    const-string v3, "MultiWindowManagerService"

    const-string v4, "[arrangeWindows] This API want MultiWindowType.eFreestyleWindow"

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "className"
    .parameter "sizeInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, Result:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v4}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v0

    .line 1459
    .end local v0           #Result:Landroid/graphics/Bitmap;
    .local v1, Result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1454
    .end local v1           #Result:Landroid/graphics/Bitmap;
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v2

    .line 1455
    .local v2, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v2, :cond_2

    .line 1456
    invoke-virtual {v2}, Lcom/android/server/sec/MWPackageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1457
    :cond_2
    const-string v3, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture bitmap - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1459
    .end local v0           #Result:Landroid/graphics/Bitmap;
    .restart local v1       #Result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public changFocus(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 1118
    :goto_0
    return-void

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->changVisibleFocusMultiWindow(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public changeRunningList(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 1125
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v1

    .line 1129
    .local v1, list:Lcom/android/server/sec/IMultiWindowList;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1130
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_0

    .line 1133
    invoke-interface {v1, v0}, Lcom/android/server/sec/IMultiWindowList;->remove(Ljava/lang/Object;)Z

    .line 1134
    invoke-interface {v1, v0}, Lcom/android/server/sec/IMultiWindowList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public destroyActivity(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 1217
    const/4 v0, 0x0

    .line 1219
    .local v0, Result:Z
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1227
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1222
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 1223
    .restart local v1       #Result:I
    goto :goto_0

    .line 1225
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->destroyActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    move v1, v0

    .line 1227
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1673
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    const-string v2, "----------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    const-string v2, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1676
    const/4 v1, 0x0

    .line 1677
    .local v1, opti:I
    array-length v2, p3

    if-ge v1, v2, :cond_7

    .line 1678
    aget-object v0, p3, v1

    .line 1679
    .local v0, cmd:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1680
    const-string v2, "c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1681
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1722
    .end local v0           #cmd:Ljava/lang/String;
    :goto_0
    const-string v2, "----------------------------------------------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    return-void

    .line 1682
    .restart local v0       #cmd:Ljava/lang/String;
    :cond_0
    const-string v2, "g"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1683
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1684
    :cond_1
    const-string v2, "r"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1685
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1686
    :cond_2
    const-string v2, "m"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1687
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1688
    :cond_3
    const-string v2, "a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1689
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    .line 1690
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1691
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    .line 1692
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1693
    :cond_4
    const-string v2, "-a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1694
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    .line 1695
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1696
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    .line 1697
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1698
    :cond_5
    const-string v2, "-h"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1699
    const-string v2, "multiwindow service dump options:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    const-string v2, "  a[all]: all state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    const-string v2, "  c[config]: config state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    const-string v2, "  g[register]: register list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1703
    const-string v2, "  r[running]: running list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    const-string v2, "  m[windowMode]: multiwindow type"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1706
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad multiwindow command, or no multiwindow match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    const-string v2, "Use -h for help."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1710
    .end local v0           #cmd:Ljava/lang/String;
    :cond_7
    const-string v2, "multiwindow service dump options:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    const-string v2, "  a or -a[all]: all state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    const-string v2, "  c[config]: config state"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    const-string v2, "  g[register]: register list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1714
    const-string v2, "  r[running]: running list"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1715
    const-string v2, "  m[windowMode]: multiwindow type"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1717
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpMultiWindowMode(Ljava/io/PrintWriter;)V

    .line 1718
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpReadConfig(Ljava/io/PrintWriter;)V

    .line 1719
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRegisterList(Ljava/io/PrintWriter;)V

    .line 1720
    invoke-direct {p0, p2}, Lcom/android/server/sec/MultiWindowManagerService;->dumpRunningList(Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public exchangeSplitScreens()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1526
    const/4 v0, 0x0

    .line 1528
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1536
    .end local v0           #Result:Z
    :cond_0
    :goto_0
    return v0

    .line 1531
    .restart local v0       #Result:Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v3, :cond_0

    .line 1532
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .line 1533
    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1}, Lcom/android/server/sec/SplitWindowModule;->exchangeSplitScreens()Z

    move-result v0

    goto :goto_0
.end method

.method public finishActivity(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 963
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 976
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 967
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finishActivity(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 969
    if-nez v0, :cond_1

    move v1, v0

    .line 970
    .restart local v1       #Result:I
    goto :goto_0

    .line 973
    .end local v1           #Result:I
    :cond_1
    const-string v2, "com.android.browser"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 974
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->destroyActivity(Landroid/content/ComponentName;I)Z

    :cond_2
    move v1, v0

    .line 976
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public finishAllWindow()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    const-string v0, "MultiWindowManagerService"

    const-string v1, "[finishAllWindow]"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 689
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->finishAllWindow()Z

    .line 693
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishAppPid(I)Z
    .locals 3
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 987
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 985
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->finishAppPid(I)Z

    move-result v0

    move v1, v0

    .line 987
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public fitToHalf(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "className"
    .parameter "iDirection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1507
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    .line 1516
    :goto_0
    return v0

    .line 1510
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v1

    sget-object v2, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v1, v2, :cond_1

    .line 1512
    const-string v1, "MultiWindowManagerService"

    const-string v2, "[fitToHalf] This API want MultiWindowType.eFreestyleWindow "

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1516
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->fitToHalf(Landroid/content/ComponentName;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getHeight(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "className"

    .prologue
    .line 519
    const/4 v0, -0x1

    .line 521
    .local v0, Result:I
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 525
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 524
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getHeight(Landroid/content/ComponentName;)I

    move-result v0

    move v1, v0

    .line 525
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public getMinimumSize(Landroid/content/ComponentName;)Landroid/graphics/Rect;
    .locals 5
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1371
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1384
    :cond_0
    :goto_0
    return-object v0

    .line 1374
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getMinimum(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1375
    .local v0, Result:Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 1376
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowDataList;->getDataItem(Ljava/lang/String;)Lcom/android/server/sec/MultiWindowDataItem;

    move-result-object v1

    .line 1377
    .local v1, item:Lcom/android/server/sec/MultiWindowDataItem;
    if-eqz v1, :cond_2

    .line 1378
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #Result:Landroid/graphics/Rect;
    iget v2, v1, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    iget v3, v1, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v0       #Result:Landroid/graphics/Rect;
    goto :goto_0

    .line 1380
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #Result:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .restart local v0       #Result:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public getMultiLayout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    return v0
.end method

.method public getMultiWindowList()Ljava/util/List;
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
    .line 263
    const-string v4, "MultiWindowManagerService"

    const-string v5, "[getMultiWindowList]"

    invoke-static {v4, v5}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v3

    .line 266
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .line 267
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    return-object v0
.end method

.method public getMultiWindowListOwner(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 413
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .line 414
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    return-object v0
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
    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowDataList;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 427
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sec/MultiWindowDataItem;

    .line 428
    .local v2, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v4, v2, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    .end local v2           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_0
    return-object v0
.end method

.method public getMultiWindowType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v0}, Landroid/sec/multiwindow/MultiWindowType;->getiValue()I

    move-result v0

    return v0
.end method

.method public getPinupWindow()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 1290
    const/4 v0, 0x0

    .line 1291
    .local v0, Result:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 1296
    .end local v0           #Result:Landroid/content/ComponentName;
    .local v1, Result:Landroid/content/ComponentName;
    :goto_0
    return-object v1

    .line 1294
    .end local v1           #Result:Landroid/content/ComponentName;
    .restart local v0       #Result:Landroid/content/ComponentName;
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getPinupWindow()Landroid/content/ComponentName;

    move-result-object v0

    move-object v1, v0

    .line 1296
    .end local v0           #Result:Landroid/content/ComponentName;
    .restart local v1       #Result:Landroid/content/ComponentName;
    goto :goto_0
.end method

.method public getPositionOfWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 899
    const/4 v1, 0x0

    .line 900
    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 907
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .line 903
    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3, p1}, Lcom/android/server/sec/MultiWindowModule;->getPositionOfWindow(Landroid/content/ComponentName;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 904
    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    .line 905
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 907
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0
.end method

.method public getResumedWindow()Landroid/content/ComponentName;
    .locals 2

    .prologue
    .line 672
    const-string v0, "MultiWindowManagerService"

    const-string v1, "[getResumedWindow]"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 675
    const/4 v0, 0x0

    .line 677
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->getResumedWindow()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public getRunningWindowList()Ljava/util/List;
    .locals 2
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
    .line 465
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v0, Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :goto_0
    return-object v0

    .line 468
    .end local v0           #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowModule;->getRunningWindowList()Ljava/util/List;

    move-result-object v0

    .restart local v0       #Result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    goto :goto_0
.end method

.method public getScreenOn()Z
    .locals 1

    .prologue
    .line 1607
    iget-boolean v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z

    return v0
.end method

.method public getVisibleWindowList()Ljava/util/List;
    .locals 2
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
    .line 642
    const-string v0, "MultiWindowManagerService"

    const-string v1, "[getVisibleWindowList]"

    invoke-static {v0, v1}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 645
    const/4 v0, 0x0

    .line 647
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->getVisibleWindowList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidth(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "className"

    .prologue
    .line 502
    const/4 v0, -0x1

    .line 504
    .local v0, Result:I
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 508
    .end local v0           #Result:I
    .local v1, Result:I
    :goto_0
    return v1

    .line 507
    .end local v1           #Result:I
    .restart local v0       #Result:I
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->getWidth(Landroid/content/ComponentName;)I

    move-result v0

    move v1, v0

    .line 508
    .end local v0           #Result:I
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public getWindowOfPackageName(Landroid/content/ComponentName;)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1015
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-object v2

    .line 1019
    :cond_1
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 1021
    .local v0, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v2

    goto :goto_0
.end method

.method public initWindowClassInfo(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "className"
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->initWindowClassInfo(Landroid/content/ComponentName;I)V

    goto :goto_0
.end method

.method public isDuplicated(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"

    .prologue
    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 633
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 631
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isDuplicated(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 633
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isMaximized(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 616
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 614
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isMaximized(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 616
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isMultiWindow(Landroid/content/ComponentName;)Z
    .locals 2
    .parameter "className"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v1, p1}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 295
    .local v0, Result:Z
    return v0
.end method

.method public isMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "owner"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/sec/MultiWindowDataList;->isMultiWindow(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    .line 454
    .local v0, Result:Z
    return v0
.end method

.method public isMultiWindowServiceEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v1, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermissionOff()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1326
    .local v0, RESULT:Z
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    move v1, v0

    .line 1334
    .end local v0           #RESULT:Z
    .local v1, RESULT:I
    :goto_0
    return v1

    .line 1329
    .end local v1           #RESULT:I
    .restart local v0       #RESULT:Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v3

    sget-object v4, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    if-eq v3, v4, :cond_1

    .line 1330
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    .line 1331
    .local v2, fwm:Lcom/android/server/sec/MultiWindowModule;
    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->isPermissionOff()Z

    move-result v0

    .end local v2           #fwm:Lcom/android/server/sec/MultiWindowModule;
    :cond_1
    move v1, v0

    .line 1334
    .restart local v1       #RESULT:I
    goto :goto_0
.end method

.method public isPinupWindow(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"

    .prologue
    .line 1276
    const/4 v0, 0x0

    .line 1277
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 1282
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1280
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isPinupWindow(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 1282
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isRunning(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"

    .prologue
    .line 482
    const/4 v0, 0x0

    .line 484
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 491
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 487
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    if-eqz p1, :cond_1

    .line 488
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->isRunning(Landroid/content/ComponentName;)Z

    move-result v0

    :cond_1
    move v1, v0

    .line 491
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public isSplitWindowFullSreen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 768
    const/4 v0, 0x0

    .line 770
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0}, Lcom/android/server/sec/MultiWindowModule;->hasFullSreen()Z

    move-result v0

    goto :goto_0
.end method

.method public isVisible(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "className"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->isVisible(Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method public maximize(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 542
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 540
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->maximize(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 542
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public maximizeAll()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 574
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 572
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->maximizeAll()Z

    move-result v0

    move v1, v0

    .line 574
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public minimize(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 597
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 589
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v3, :cond_1

    .line 591
    const-string v2, "MultiWindowManagerService"

    const-string v3, "[fitToHalf] This API can not MultiWindowType.eSplitWindow "

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 592
    .restart local v1       #Result:I
    goto :goto_0

    .line 595
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->minimize(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 597
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public notifyFinished(Landroid/content/ComponentName;I)Z
    .locals 4
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 746
    const/4 v0, 0x0

    .line 748
    .local v0, Result:Z
    const-string v2, "MultiWindowManagerService"

    const-string v3, "[finishedSelfWindow]"

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 755
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 754
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finishedSelfWindow(Landroid/content/ComponentName;I)Z

    move-result v0

    move v1, v0

    .line 755
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public notifyForceFinished(Landroid/content/ComponentName;)Z
    .locals 5
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1236
    const/4 v0, 0x0

    .line 1238
    .local v0, Result:Z
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1249
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1241
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 1242
    .restart local v1       #Result:I
    goto :goto_0

    .line 1244
    .end local v1           #Result:I
    :cond_1
    const-string v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[notifyForceFinished] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->checkForceFinishedMultiWindow(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1247
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->finishOtherStateChanged(Landroid/content/ComponentName;)V

    move v1, v0

    .line 1249
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public notifySIP(I)Z
    .locals 3
    .parameter "height"

    .prologue
    .line 1660
    const/4 v0, 0x0

    .line 1662
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 1667
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1665
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->notifySIP(I)Z

    move-result v0

    move v1, v0

    .line 1667
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public notifyStarted(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "className"
    .parameter "taskId"

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 726
    .local v0, Result:Z
    const-string v1, "MultiWindowManagerService"

    const-string v2, "[startedSelfWindow]"

    invoke-static {v1, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    .line 735
    :cond_0
    return v0
.end method

.method public orientationChangeRestore(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "cName"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1395
    const/4 v0, 0x0

    .line 1397
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 1402
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1400
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->orientationChangeRestore(Landroid/content/ComponentName;I)Z

    move-result v0

    move v1, v0

    .line 1402
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public orientationChecked()Z
    .locals 6

    .prologue
    .line 1412
    const/4 v0, 0x0

    .line 1414
    .local v0, Result:Z
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    if-nez v4, :cond_1

    :cond_0
    move v1, v0

    .line 1439
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1417
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4, v5}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    move v1, v0

    .line 1439
    .restart local v1       #Result:I
    goto :goto_0

    .line 1419
    .end local v1           #Result:I
    :cond_3
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4, v5}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1421
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->eFreestyleWindow:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4, v5}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1422
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->runSize()I

    move-result v4

    if-lez v4, :cond_2

    .line 1423
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_4
    move v1, v0

    .line 1425
    .restart local v1       #Result:I
    goto :goto_0

    .line 1427
    .end local v1           #Result:I
    :cond_5
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/sec/MWClassItem;->getMultiWindowVisibleFlag()I

    move-result v2

    .line 1428
    .local v2, flag:I
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    iget-object v4, v4, Lcom/android/server/sec/MultiWindowModule;->mAppList:Lcom/android/server/sec/MultiWindowList;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowList;->getFocusItem()Lcom/android/server/sec/MWPackageItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/sec/MWPackageItem;->isFullScreen()Z

    move-result v3

    .line 1429
    .local v3, maimizeFlag:Z
    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    if-nez v3, :cond_2

    .line 1432
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 1435
    .end local v2           #flag:I
    .end local v3           #maimizeFlag:Z
    :cond_7
    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v5, Landroid/sec/multiwindow/MultiWindowType;->ePhoneWinodw:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4, v5}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1
.end method

.method public pauseChangeInformation(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1201
    const/4 v0, 0x0

    .line 1203
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 1208
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1206
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->pauseChangeInformation(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 1208
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public pinupWindow(Landroid/content/ComponentName;Z)Z
    .locals 3
    .parameter "className"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, Result:Z
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1267
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1263
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 1264
    .restart local v1       #Result:I
    goto :goto_0

    .line 1266
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->setPinupWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .line 1267
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public postResume(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "className"
    .parameter "taskID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1144
    const/4 v0, 0x0

    .line 1146
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 1152
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1149
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->postResume(Landroid/content/ComponentName;)Z

    move-result v0

    .line 1150
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->resumeChangeInformation(Landroid/content/ComponentName;I)V

    move v1, v0

    .line 1152
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public regWindowClass(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1037
    .local v0, Result:Z
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1045
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1040
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 1041
    .restart local v1       #Result:I
    goto :goto_0

    .line 1043
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->regSubMultiWindowClass(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 1045
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public regWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z
    .locals 3
    .parameter "className"
    .parameter "mwAction"
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1094
    const/4 v0, 0x0

    .line 1096
    .local v0, Result:Z
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1104
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1099
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 1100
    .restart local v1       #Result:I
    goto :goto_0

    .line 1102
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->regMultiWindowClassAction(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowAction;I)Z

    move-result v0

    move v1, v0

    .line 1104
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public registerMultiWindow(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 218
    .local v0, Result:Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v1}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v2, p1}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return v0

    .line 216
    .end local v0           #Result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 7
    .parameter "owner"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, ownerPackageName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, classPackageName:Ljava/lang/String;
    const-string v1, "com.android.browser"

    .line 319
    .local v1, browserPackageName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 321
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 322
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v5, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v5, p2}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 325
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    :cond_1
    return v0
.end method

.method public registerMultiWindowOwnerWithMinList(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 8
    .parameter "className"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 375
    .local p2, minSize:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x0

    .line 377
    .local v0, Result:Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v3, minList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Point;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 379
    .local v4, r:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v4           #r:Landroid/graphics/Rect;
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    .line 383
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v5, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v5, p1, v3}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;Ljava/util/List;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 385
    const/4 v5, 0x1

    return v5
.end method

.method public registerMultiWindowWithMin(Landroid/content/ComponentName;II)Z
    .locals 3
    .parameter "className"
    .parameter "minWidth"
    .parameter "minHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    .line 340
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v2, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 342
    return v0
.end method

.method public registerMultiWindowWithMinAndRatio(Landroid/content/ComponentName;IIZ)Z
    .locals 3
    .parameter "className"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "isfixedRatio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v1

    .line 359
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    new-instance v2, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;IIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 361
    return v0
.end method

.method public removeMultiWindow(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, Result:Z
    invoke-virtual {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 254
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 253
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    .line 254
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public removeMultiWindowOwner(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "owner"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/sec/MultiWindowDataList;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 398
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 400
    return v0
.end method

.method public removeMultiWindowOwnerItem(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "owner"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x0

    .line 442
    .local v0, Result:Z
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/sec/MultiWindowDataList;->remove(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restore(Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 559
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 557
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->restore(Landroid/content/ComponentName;)Z

    move-result v0

    move v1, v0

    .line 559
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z
    .locals 4
    .parameter "className"
    .parameter "mwListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, Result:Z
    const-string v2, "MultiWindowManagerService"

    const-string v3, "[resume]"

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 713
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 711
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->resume(Landroid/content/ComponentName;Landroid/sec/multiwindow/IMultiWindowListener;)Z

    move-result v0

    move v1, v0

    .line 713
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public saveCapture(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z
    .locals 5
    .parameter "className"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1469
    const/4 v0, 0x0

    .line 1471
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eNothing:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v2, v3}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 1478
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1475
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_1
    const-string v2, "MultiWindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->saveCaptureItem(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z

    move-result v0

    move v1, v0

    .line 1478
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public screenShot(Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1482
    const/4 v0, 0x0

    .line 1484
    .local v0, Result:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 1495
    .end local v0           #Result:Landroid/graphics/Bitmap;
    .local v1, Result:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 1488
    .end local v1           #Result:Landroid/graphics/Bitmap;
    .restart local v0       #Result:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->screenShot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1489
    const-string v2, "jhseok"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenShot1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    invoke-virtual {p0, p1, v0}, Lcom/android/server/sec/MultiWindowManagerService;->saveCapture(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)Z

    .line 1492
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/sec/MultiWindowManagerService;->capture(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1493
    const-string v2, "jhseok"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenShot2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 1495
    .end local v0           #Result:Landroid/graphics/Bitmap;
    .restart local v1       #Result:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public setMinimumSize(Landroid/content/ComponentName;II)Z
    .locals 7
    .parameter "className"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1346
    const/4 v0, 0x0

    .line 1348
    .local v0, Result:Z
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v5, :cond_0

    move v1, v0

    .line 1361
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1351
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/sec/MultiWindowModule;->setMinimum(Landroid/content/ComponentName;II)Z

    move-result v0

    .line 1353
    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v5}, Lcom/android/server/sec/MultiWindowDataList;->getNormal()Ljava/util/List;

    move-result-object v4

    .line 1354
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    .line 1355
    .local v3, item:Lcom/android/server/sec/MultiWindowDataItem;
    iget-object v5, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1356
    iput p2, v3, Lcom/android/server/sec/MultiWindowDataItem;->minWidth:I

    .line 1357
    iput p3, v3, Lcom/android/server/sec/MultiWindowDataItem;->minHeight:I

    goto :goto_1

    .end local v3           #item:Lcom/android/server/sec/MultiWindowDataItem;
    :cond_2
    move v1, v0

    .line 1361
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public setMultiLayout(Z)Z
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1587
    iput-boolean p1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiLayoutUsed:Z

    .line 1588
    const/4 v0, 0x1

    return v0
.end method

.method public setMultiWindowType(I)Z
    .locals 7
    .parameter "type"

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, Return:Z
    invoke-static {p1}, Landroid/sec/multiwindow/MultiWindowType;->getValidType(I)Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    .line 138
    .local v2, tempType:Landroid/sec/multiwindow/MultiWindowType;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v3, v2}, Landroid/sec/multiwindow/MultiWindowType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const/4 v0, 0x1

    move v1, v0

    .line 186
    .end local v0           #Return:Z
    .local v1, Return:I
    :goto_0
    return v1

    .line 143
    .end local v1           #Return:I
    .restart local v0       #Return:Z
    :cond_0
    iput-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    .line 144
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3, v2}, Lcom/android/server/sec/MultiWindowDataList;->setType(Landroid/sec/multiwindow/MultiWindowType;)V

    .line 146
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_1

    .line 147
    sget-object v3, Lcom/android/server/sec/MultiWindowManagerService$2;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v4}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 161
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    .line 164
    :cond_1
    sget-object v3, Lcom/android/server/sec/MultiWindowManagerService$2;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    invoke-virtual {v4}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 182
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-eqz v3, :cond_2

    .line 183
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 186
    .restart local v1       #Return:I
    goto :goto_0

    .line 149
    .end local v1           #Return:I
    :pswitch_1
    invoke-static {}, Lcom/android/server/sec/SplitWindowModule;->removeInstance()V

    goto :goto_1

    .line 152
    :pswitch_2
    invoke-static {}, Lcom/android/server/sec/FreestyleWindowModule;->removeInstance()V

    goto :goto_1

    .line 166
    :pswitch_3
    const-string v3, "MultiWindowManagerService"

    const-string v4, "Multi-Window type is nothing."

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v0, 0x1

    .line 168
    goto :goto_2

    .line 170
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/sec/SplitWindowModule;->getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/SplitWindowModule;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    goto :goto_2

    .line 173
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowType:Landroid/sec/multiwindow/MultiWindowType;

    iget-object v4, p0, Lcom/android/server/sec/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;

    iget-object v6, p0, Lcom/android/server/sec/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/sec/FreestyleWindowModule;->getInstance(Landroid/sec/multiwindow/MultiWindowType;Landroid/content/Context;Lcom/android/server/sec/MultiWindowActionHandler;Landroid/view/WindowManager;)Lcom/android/server/sec/FreestyleWindowModule;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    goto :goto_2

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 164
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setPermissionOff(Z)V
    .locals 1
    .parameter "permissionCheck"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v0, :cond_0

    .line 1604
    :goto_0
    return-void

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/MultiWindowModule;->setPermissionOff(Z)V

    goto :goto_0
.end method

.method public setPositionWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/sec/multiwindow/MultiWindowObject;
    .locals 6
    .parameter "className"
    .parameter "newRect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    const-string v3, "MultiWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPositionWindow :: className "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , Rect :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v1, 0x0

    .line 921
    .local v1, Result:Landroid/sec/multiwindow/MultiWindowObject;
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v3, :cond_0

    move-object v2, v1

    .line 928
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .local v2, Result:Landroid/sec/multiwindow/MultiWindowObject;
    :goto_0
    return-object v2

    .line 924
    .end local v2           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v1       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    :cond_0
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/sec/MultiWindowModule;->setPositionOfWindow(Landroid/content/ComponentName;Landroid/graphics/Rect;Z)Lcom/android/server/sec/MWPackageItem;

    move-result-object v0

    .line 925
    .local v0, Item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v0, :cond_1

    .line 926
    invoke-virtual {v0}, Lcom/android/server/sec/MWPackageItem;->toObject()Landroid/sec/multiwindow/MultiWindowObject;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 928
    .end local v1           #Result:Landroid/sec/multiwindow/MultiWindowObject;
    .restart local v2       #Result:Landroid/sec/multiwindow/MultiWindowObject;
    goto :goto_0
.end method

.method public start(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 828
    const/4 v0, 0x0

    .line 830
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 839
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 833
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 834
    .restart local v1       #Result:I
    goto :goto_0

    .line 836
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->freezeRotation()V

    .line 837
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1}, Lcom/android/server/sec/MultiWindowModule;->start(Landroid/content/Intent;)Z

    move-result v0

    move v1, v0

    .line 839
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public startDualWindow(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 3
    .parameter "parentIntent"
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 806
    .local v1, parentClassName:Landroid/content/ComponentName;
    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 809
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public startMultiWindow(Landroid/content/ComponentName;Z)Z
    .locals 3
    .parameter "className"
    .parameter "isMiniMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1076
    .local v0, Result:Z
    invoke-direct {p0, p1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1084
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1079
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    move v1, v0

    .line 1080
    .restart local v1       #Result:I
    goto :goto_0

    .line 1082
    .end local v1           #Result:I
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->startMultiWindow(Landroid/content/ComponentName;Z)Z

    move-result v0

    move v1, v0

    .line 1084
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 4
    .parameter "intentCaller"
    .parameter "intentCallee"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1549
    const/4 v0, 0x0

    .line 1551
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1559
    .end local v0           #Result:Z
    :cond_0
    :goto_0
    return v0

    .line 1554
    .restart local v0       #Result:Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v3, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .line 1556
    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreens(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 4
    .parameter "intentCaller"
    .parameter "intentCallee"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_1

    .line 1573
    const/4 v0, 0x0

    .line 1579
    .end local v0           #Result:Z
    :cond_0
    :goto_0
    return v0

    .line 1574
    .restart local v0       #Result:Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2}, Lcom/android/server/sec/MultiWindowModule;->getMultiWindowType()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    sget-object v3, Landroid/sec/multiwindow/MultiWindowType;->eSplitWindow:Landroid/sec/multiwindow/MultiWindowType;

    if-ne v2, v3, :cond_0

    .line 1575
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    check-cast v1, Lcom/android/server/sec/SplitWindowModule;

    .line 1576
    .local v1, swm:Lcom/android/server/sec/SplitWindowModule;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/sec/SplitWindowModule;->startSplitScreensForLauncher(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startSplitWindowWithDirection(Landroid/content/Intent;I)Z
    .locals 2
    .parameter "intent"
    .parameter "iDirection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 851
    const/4 v0, 0x0

    .line 853
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v0

    .line 856
    :cond_1
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public startSplitWindowWithDirectionReplaced(Landroid/content/Intent;IZ)Z
    .locals 2
    .parameter "intent"
    .parameter "iDirection"
    .parameter "isReplaced"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    const/4 v0, 0x0

    .line 877
    .local v0, Result:Z
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sec/MultiWindowManagerService;->isAllMultiWindow(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return v0

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public stop(Landroid/content/ComponentName;I)Z
    .locals 3
    .parameter "className"
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, Result:Z
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    if-nez v2, :cond_0

    move v1, v0

    .line 1004
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_0
    return v1

    .line 1002
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/sec/MultiWindowModule;->finish(Landroid/content/ComponentName;I)Z

    move-result v0

    move v1, v0

    .line 1004
    .restart local v1       #Result:I
    goto :goto_0
.end method

.method public unRegisterMultiWindow(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, Result:Z
    iget-object v3, p0, Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowList:Lcom/android/server/sec/MultiWindowDataList;

    invoke-virtual {v3}, Lcom/android/server/sec/MultiWindowDataList;->getUnregistList()Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/sec/MultiWindowDataItem;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 231
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sec/MultiWindowDataItem;

    iget-object v3, v3, Lcom/android/server/sec/MultiWindowDataItem;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 230
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 236
    :cond_1
    new-instance v3, Lcom/android/server/sec/MultiWindowDataItem;

    invoke-direct {v3, p1}, Lcom/android/server/sec/MultiWindowDataItem;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 238
    return v0
.end method

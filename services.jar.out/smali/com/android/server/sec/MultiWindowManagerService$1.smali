.class Lcom/android/server/sec/MultiWindowManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/MultiWindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1614
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1615
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v8}, Lcom/android/server/sec/MultiWindowManagerService;->access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/server/sec/MultiWindowModule;->changeLockScreenStatus(Z)Z

    .line 1616
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #setter for: Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z
    invoke-static {v8, v10}, Lcom/android/server/sec/MultiWindowManagerService;->access$102(Lcom/android/server/sec/MultiWindowManagerService;Z)Z

    .line 1655
    :cond_0
    :goto_0
    return-void

    .line 1617
    :cond_1
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1619
    :cond_2
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v8}, Lcom/android/server/sec/MultiWindowManagerService;->access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/sec/MultiWindowModule;->changeLockScreenStatus(Z)Z

    .line 1620
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #setter for: Lcom/android/server/sec/MultiWindowManagerService;->mScreenOn:Z
    invoke-static {v8, v11}, Lcom/android/server/sec/MultiWindowManagerService;->access$102(Lcom/android/server/sec/MultiWindowManagerService;Z)Z

    .line 1621
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/sec/MultiWindowManagerService;->getVisibleWindowList()Ljava/util/List;

    move-result-object v2

    .line 1622
    .local v2, cnVisible:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v2, :cond_4

    .line 1623
    invoke-static {}, Lcom/android/server/sec/MultiWindowManagerService;->getSelf()Lcom/android/server/sec/MultiWindowManagerService;

    move-result-object v6

    .line 1624
    .local v6, s:Lcom/android/server/sec/MultiWindowManagerService;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 1625
    .local v1, cn:Landroid/content/ComponentName;
    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/sec/MultiWindowModule;->getList()Lcom/android/server/sec/IMultiWindowList;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/server/sec/IMultiWindowList;->getMWPackageItemOfName(Ljava/lang/String;)Lcom/android/server/sec/MWPackageItem;

    move-result-object v5

    .line 1626
    .local v5, item:Lcom/android/server/sec/MWPackageItem;
    if-eqz v5, :cond_3

    .line 1629
    invoke-virtual {v5}, Lcom/android/server/sec/MWPackageItem;->getMWClassItemLast()Lcom/android/server/sec/MWClassItem;

    move-result-object v7

    .line 1630
    .local v7, sub:Lcom/android/server/sec/MWClassItem;
    if-eqz v7, :cond_3

    .line 1631
    invoke-virtual {v7}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1632
    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mHandler:Lcom/android/server/sec/MultiWindowActionHandler;
    invoke-static {v6}, Lcom/android/server/sec/MultiWindowManagerService;->access$200(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowActionHandler;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/sec/MWClassItem;->getMultiWindowAction()Landroid/sec/multiwindow/IMultiWindowAction;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/sec/MultiWindowActionHandler;->actionResize(Landroid/sec/multiwindow/IMultiWindowAction;)V

    goto :goto_1

    .line 1638
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/android/server/sec/MWPackageItem;
    .end local v6           #s:Lcom/android/server/sec/MultiWindowManagerService;
    .end local v7           #sub:Lcom/android/server/sec/MWClassItem;
    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/sec/MultiWindowManagerService;->setPermissionOff(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1642
    :goto_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    .line 1643
    .local v0, amsSelf:Lcom/android/server/am/ActivityManagerService;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->mwEnsureActivitiesVisibleLocked()V

    .line 1645
    :try_start_1
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/sec/MultiWindowManagerService;->setPermissionOff(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v3

    .line 1647
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 1639
    .end local v0           #amsSelf:Lcom/android/server/am/ActivityManagerService;
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1640
    .restart local v3       #e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 1651
    .end local v2           #cnVisible:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_5
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1652
    iget-object v8, p0, Lcom/android/server/sec/MultiWindowManagerService$1;->this$0:Lcom/android/server/sec/MultiWindowManagerService;

    #getter for: Lcom/android/server/sec/MultiWindowManagerService;->mMultiWindowModule:Lcom/android/server/sec/MultiWindowModule;
    invoke-static {v8}, Lcom/android/server/sec/MultiWindowManagerService;->access$000(Lcom/android/server/sec/MultiWindowManagerService;)Lcom/android/server/sec/MultiWindowModule;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/sec/MultiWindowModule;->rePositionOfAllWindows()V

    goto/16 :goto_0
.end method

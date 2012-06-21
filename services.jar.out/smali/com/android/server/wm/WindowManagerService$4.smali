.class Lcom/android/server/wm/WindowManagerService$4;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 18
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 869
    const/4 v3, 0x1

    .line 870
    .local v3, handled:Z
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 872
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    .line 873
    .local v12, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    .line 874
    .local v13, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 876
    .local v2, action:I
    if-eqz v2, :cond_0

    .line 973
    :goto_0
    return-void

    .line 880
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v14, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v15

    .line 881
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FF)Lcom/android/server/wm/WindowState;
    invoke-static {v14, v12, v13}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;FF)Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 888
    .local v8, targetWin:Lcom/android/server/wm/WindowState;
    if-nez v8, :cond_1

    .line 889
    monitor-exit v15

    goto :goto_0

    .line 972
    .end local v8           #targetWin:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 892
    .restart local v8       #targetWin:Lcom/android/server/wm/WindowState;
    :cond_1
    :try_start_1
    iget-object v14, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x834

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 894
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 895
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 898
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v14, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    .line 899
    .local v11, windows:Ljava/util/ArrayList;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 900
    .local v1, N:I
    const/4 v9, 0x0

    .line 901
    .local v9, topWidgetWin:Lcom/android/server/wm/WindowState;
    const/4 v10, 0x0

    .line 902
    .local v10, win:Lcom/android/server/wm/WindowState;
    add-int/lit8 v6, v1, -0x1

    .local v6, j:I
    :goto_1
    if-ltz v6, :cond_3

    .line 904
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #win:Lcom/android/server/wm/WindowState;
    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 906
    .restart local v10       #win:Lcom/android/server/wm/WindowState;
    iget-object v14, v10, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x834

    move/from16 v0, v16

    if-eq v14, v0, :cond_2

    .line 902
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 913
    :cond_2
    move-object v9, v10

    .line 914
    if-eq v9, v8, :cond_5

    .line 915
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 916
    .local v5, id:I
    if-gez v5, :cond_4

    .line 917
    const-string v14, "WindowManager"

    const-string v16, "    no targetWin in mWindows!!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/safelog/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v9, 0x0

    .line 924
    :goto_2
    if-eqz v9, :cond_3

    .line 926
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v14, v9, v8}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v8, v14, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    .line 930
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 931
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 932
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v14}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 972
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #j:I
    .end local v9           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    .end local v11           #windows:Ljava/util/ArrayList;
    :cond_3
    :goto_3
    monitor-exit v15

    goto/16 :goto_0

    .line 921
    .restart local v1       #N:I
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v6       #j:I
    .restart local v9       #topWidgetWin:Lcom/android/server/wm/WindowState;
    .restart local v10       #win:Lcom/android/server/wm/WindowState;
    .restart local v11       #windows:Ljava/util/ArrayList;
    :cond_4
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 936
    .end local v5           #id:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v14, v8, :cond_3

    .line 938
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 939
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 940
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v14}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_3

    .line 949
    .end local v1           #N:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #topWidgetWin:Lcom/android/server/wm/WindowState;
    .end local v10           #win:Lcom/android/server/wm/WindowState;
    .end local v11           #windows:Ljava/util/ArrayList;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    .line 952
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    .line 953
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mLayoutNeeded:Z

    .line 954
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 955
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v14}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 958
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/sec/multiwindow/MultiWindowManager;->isMultiWindowServiceEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 959
    const-string v14, "WindowManager"

    const-string v16, "othreAppTouched of WindowManagerService is called"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v14, :cond_3

    .line 961
    const/4 v14, 0x1

    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v14, v0, :cond_3

    iget-object v14, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x63

    move/from16 v0, v16

    if-gt v14, v0, :cond_3

    .line 963
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 964
    monitor-exit v15

    goto/16 :goto_0

    .line 966
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v16, 0x19

    move/from16 v0, v16

    invoke-virtual {v14, v0, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 967
    .local v7, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v14, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

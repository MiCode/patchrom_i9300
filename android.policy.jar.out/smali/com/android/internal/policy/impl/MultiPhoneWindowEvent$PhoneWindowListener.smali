.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneWindowListener"
.end annotation


# static fields
.field private static final BIT_MAP_HEIGHT:I = 0x37

.field private static final BIT_MAP_WIDTH:I = 0x75

.field public static final FLAG_RESIZE_BOTTOM:I = 0x2

.field public static final FLAG_RESIZE_LEFT:I = 0x4

.field public static final FLAG_RESIZE_RIGHT:I = 0x8

.field public static final FLAG_RESIZE_TOP:I = 0x1

.field static final TAG:Ljava/lang/String; = "PhoneWindowListener"

.field private static final TOUCH_DOWN_END:I = -0x1

.field private static final TOUCH_DOWN_START:I


# instance fields
.field private fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

.field private flag:I

.field private hasGuideLayout:Z

.field private mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

.field private mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

.field old_x:F

.field old_y:F

.field private pd:Landroid/sec/multiwindow/GuideRelayoutWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V
    .locals 1
    .parameter "self"

    .prologue
    .line 602
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->flag:I

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->hasGuideLayout:Z

    .line 603
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 605
    return-void
.end method

.method private isStartDrag(Landroid/view/View;)Z
    .locals 15
    .parameter "v"

    .prologue
    .line 684
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 685
    .local v9, rect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 687
    iget v0, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$302(I)I

    .line 690
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$302(I)I

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 697
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v6

    .line 699
    .local v6, imw:Landroid/sec/multiwindow/IMultiWindow;
    invoke-interface {v6}, Landroid/sec/multiwindow/IMultiWindow;->isMaximized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 702
    .local v8, par:Landroid/view/WindowManager$LayoutParams;
    invoke-interface {v6}, Landroid/sec/multiwindow/IMultiWindow;->getMinimumSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 703
    invoke-interface {v6}, Landroid/sec/multiwindow/IMultiWindow;->getMinimumSize()Landroid/graphics/Point;

    move-result-object v7

    .line 704
    .local v7, lpoint:Landroid/graphics/Point;
    iget v4, v7, Landroid/graphics/Point;->x:I

    .line 705
    .local v4, minimumWidth:I
    iget v5, v7, Landroid/graphics/Point;->y:I

    .line 706
    .local v5, minimumHeight:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 776
    .end local v4           #minimumWidth:I
    .end local v5           #minimumHeight:I
    .end local v7           #lpoint:Landroid/graphics/Point;
    .end local v8           #par:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 712
    .restart local v4       #minimumWidth:I
    .restart local v5       #minimumHeight:I
    .restart local v7       #lpoint:Landroid/graphics/Point;
    .restart local v8       #par:Landroid/view/WindowManager$LayoutParams;
    :pswitch_0
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 713
    sget-object v0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$1;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 722
    :pswitch_1
    const-string v0, "PhoneWindowListener"

    const-string v2, "eSplitWindow ::: mode move"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v0, "PhoneWindowListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eSplitWindow : par.x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", par.y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", par.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", par.height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v0, Landroid/sec/multiwindow/GuideRelayoutWindow;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v13, v14

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-direct {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct/range {v0 .. v5}, Landroid/sec/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    .line 725
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setMode(I)V

    .line 729
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 715
    :pswitch_2
    const-string v0, "PhoneWindowListener"

    const-string v2, "eFreestyleWindow ::: mode move"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v0, "PhoneWindowListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eFreestyleWindow : par.x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", par.y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", par.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", par.height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v0, Landroid/sec/multiwindow/GuideRelayoutWindow;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v13, v14

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-direct {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct/range {v0 .. v5}, Landroid/sec/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setMode(I)V

    .line 720
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 751
    :pswitch_3
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 752
    sget-object v0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$1;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/multiwindow/IMultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 754
    :pswitch_4
    const-string v0, "PhoneWindowListener"

    const-string v2, "eFreestyleWindow ::: mode resize"

    invoke-static {v0, v2}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    new-instance v0, Landroid/sec/multiwindow/GuideRelayoutWindow;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v11, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v12

    sub-int/2addr v11, v12

    iget v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v12, v13

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v13, v14

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-direct {v3, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct/range {v0 .. v5}, Landroid/sec/multiwindow/GuideRelayoutWindow;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setStatusBarHeight(I)V

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setMode(I)V

    .line 758
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x102038e
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 713
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 752
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "src"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 780
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 782
    .local v1, context:Landroid/content/Context;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 783
    .local v2, display:Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 784
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 786
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 800
    :goto_0
    const-string v8, "PhoneWindowListener"

    const-string v9, "onClick of PhoneWindowListner is called"

    invoke-static {v8, v9}, Landroid/sec/multiwindow/MWlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-static {}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$300()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    .line 804
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 805
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 807
    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$302(I)I

    .line 815
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_0
    instance-of v8, v1, Landroid/app/Activity;

    if-eqz v8, :cond_1

    .line 816
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 824
    .local v0, className:Landroid/content/ComponentName;
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 825
    .local v5, par:Landroid/view/WindowManager$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    .line 826
    .local v3, imw:Landroid/sec/multiwindow/IMultiWindow;
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->isMaximized()Z

    move-result v8

    if-nez v8, :cond_3

    .line 827
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->maximize()Z

    .line 835
    :goto_2
    return-void

    .line 788
    .end local v0           #className:Landroid/content/ComponentName;
    .end local v3           #imw:Landroid/sec/multiwindow/IMultiWindow;
    .end local v5           #par:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #context:Landroid/content/Context;
    :pswitch_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->minimizeButton:Landroid/widget/ImageButton;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 789
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->maximizeButton:Landroid/widget/ImageButton;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 793
    :pswitch_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->minimizeButton:Landroid/widget/ImageButton;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$400(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 794
    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->maximizeButton:Landroid/widget/ImageButton;
    invoke-static {v8}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/widget/ImageButton;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 818
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v7, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 819
    .local v7, sCn:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 820
    const-string v7, ""

    .line 821
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #className:Landroid/content/ComponentName;
    goto :goto_1

    .line 829
    .end local v1           #context:Landroid/content/Context;
    .end local v7           #sCn:Ljava/lang/String;
    .restart local v3       #imw:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v5       #par:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->restore()Z

    goto :goto_2

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1020392
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 616
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 617
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 650
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 677
    :cond_0
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->hasGuideLayout:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v5, p2}, Landroid/sec/multiwindow/GuideRelayoutWindow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 678
    :cond_1
    :goto_1
    return v5

    .line 619
    :pswitch_0
    iput v5, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->flag:I

    .line 620
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->isStartDrag(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->hasGuideLayout:Z

    goto :goto_0

    .line 652
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 654
    .local v2, context:Landroid/content/Context;
    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 655
    check-cast v2, Landroid/app/Activity;

    .end local v2           #context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 663
    .local v1, className:Landroid/content/ComponentName;
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    .line 664
    .local v3, imw:Landroid/sec/multiwindow/IMultiWindow;
    invoke-interface {v3}, Landroid/sec/multiwindow/IMultiWindow;->isMaximized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 666
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mDTD:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 668
    iget-object v6, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;->fd:Landroid/sec/multiwindow/GuideRelayoutWindow;

    invoke-virtual {v6, v5}, Landroid/sec/multiwindow/GuideRelayoutWindow;->setMode(I)V

    goto :goto_1

    .line 657
    .end local v1           #className:Landroid/content/ComponentName;
    .end local v3           #imw:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v2       #context:Landroid/content/Context;
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 658
    .local v4, sCn:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 659
    const-string v4, ""

    .line 660
    :cond_3
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #className:Landroid/content/ComponentName;
    goto :goto_2

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 650
    :pswitch_data_1
    .packed-switch 0x102038f
        :pswitch_1
    .end packed-switch
.end method

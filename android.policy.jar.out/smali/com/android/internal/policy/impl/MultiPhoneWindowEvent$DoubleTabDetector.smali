.class Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleTabDetector"
.end annotation


# instance fields
.field private mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

.field private mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V
    .locals 1
    .parameter "self"

    .prologue
    .line 842
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 843
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/PhoneWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 845
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "e"

    .prologue
    const/4 v11, 0x0

    .line 850
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 852
    .local v1, context:Landroid/content/Context;
    instance-of v7, v1, Landroid/app/Activity;

    if-eqz v7, :cond_0

    .line 853
    check-cast v1, Landroid/app/Activity;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 861
    .local v0, className:Landroid/content/ComponentName;
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;->mSelf:Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    #getter for: Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v7

    invoke-interface {v7, v0}, Landroid/sec/multiwindow/IMultiWindowManager;->getWindowInstance(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    move-result-object v3

    .line 863
    .local v3, imw:Landroid/sec/multiwindow/IMultiWindow;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 864
    .local v2, display:Landroid/view/Display;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 865
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 867
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 868
    .local v5, par:Landroid/view/WindowManager$LayoutParams;
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x2

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    mul-int/lit8 v8, v8, 0x2

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_2

    .line 869
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v7, v11, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v7}, Landroid/sec/multiwindow/IMultiWindow;->relayout(Landroid/graphics/Rect;)Z

    .line 873
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 855
    .end local v0           #className:Landroid/content/ComponentName;
    .end local v2           #display:Landroid/view/Display;
    .end local v3           #imw:Landroid/sec/multiwindow/IMultiWindow;
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v5           #par:Landroid/view/WindowManager$LayoutParams;
    .restart local v1       #context:Landroid/content/Context;
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 856
    .local v6, sCn:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 857
    const-string v6, ""

    .line 858
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #className:Landroid/content/ComponentName;
    goto :goto_0

    .line 871
    .end local v1           #context:Landroid/content/Context;
    .end local v6           #sCn:Ljava/lang/String;
    .restart local v2       #display:Landroid/view/Display;
    .restart local v3       #imw:Landroid/sec/multiwindow/IMultiWindow;
    .restart local v4       #metrics:Landroid/util/DisplayMetrics;
    .restart local v5       #par:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v8, v8, 0x2

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v7, v8, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v3, v7}, Landroid/sec/multiwindow/IMultiWindow;->relayout(Landroid/graphics/Rect;)Z

    goto :goto_1
.end method

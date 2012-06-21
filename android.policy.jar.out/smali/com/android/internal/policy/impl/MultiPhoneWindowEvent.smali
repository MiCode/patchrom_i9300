.class public Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;
.super Ljava/lang/Object;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$1;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForFreestyle;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$ModifyLayoutListenerForSplit;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$SwitchListener;,
        Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowEvent"

.field private static final rejectList:[Ljava/lang/String;

.field private static statusBarHeight:I


# instance fields
.field private mDTD:Landroid/view/GestureDetector;

.field private mManager:Landroid/sec/multiwindow/IMultiWindowManager;

.field private mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

.field private maximizeButton:Landroid/widget/ImageButton;

.field private minimizeButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->statusBarHeight:I

    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.process.acore"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.inputmethod.latin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.welgate.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.mwc.launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.welgate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->rejectList:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 9
    .parameter "owner"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 100
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    .local v1, context:Landroid/content/Context;
    const-string v5, "Unknown"

    .line 103
    .local v5, processName:Ljava/lang/String;
    const-string v4, "Unknown"

    .line 105
    .local v4, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v5, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->isNoWindowDecor()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    instance-of v7, v1, Landroid/app/Activity;

    if-eqz v7, :cond_0

    .line 120
    sget-object v0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->rejectList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 121
    .local v6, sv:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v6           #sv:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 128
    iget-object v7, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Landroid/sec/multiwindow/IMultiWindowManager;->isMultiWindow(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    sget-object v7, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$1;->$SwitchMap$android$sec$multiwindow$MultiWindowType:[I

    iget-object v8, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v8}, Landroid/sec/multiwindow/IMultiWindowManager;->getMultiWindowMode()Landroid/sec/multiwindow/MultiWindowType;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/multiwindow/MultiWindowType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->splitModeLayout(Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->freestyleModeLayout(Landroid/content/Context;)V

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->fullScreenModeLayout(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Lcom/android/internal/policy/impl/PhoneWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/sec/multiwindow/IMultiWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mDTD:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->statusBarHeight:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->statusBarHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->minimizeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->maximizeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public static createInstance(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;
    .locals 1
    .parameter "owner"

    .prologue
    .line 94
    new-instance v0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    return-object v0
.end method

.method private freestyleModeLayout(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 256
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 258
    .local v5, inflater:Landroid/view/LayoutInflater;
    new-instance v11, Landroid/view/GestureDetector;

    new-instance v12, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-direct {v11, p1, v12}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mDTD:Landroid/view/GestureDetector;

    .line 260
    const v11, 0x109008a

    invoke-virtual {v5, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 261
    .local v0, borderFrame:Landroid/widget/FrameLayout;
    const v11, 0x109008b

    invoke-virtual {v5, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 262
    .local v8, windowControls:Landroid/view/View;
    const v11, 0x1020389

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 264
    .local v7, windowContentFrame:Landroid/widget/LinearLayout;
    const v11, 0x102038e

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 265
    .local v9, windowResize:Landroid/widget/ImageButton;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 269
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v11}, Landroid/sec/multiwindow/IMultiWindowManager;->getMultiLayout()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 270
    const v11, 0x109008c

    invoke-virtual {v5, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 271
    .local v10, windowTitleBar:Landroid/view/View;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    const v11, 0x1020391

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 274
    .local v4, hiddenButton:Landroid/widget/ImageButton;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$HiddenListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    const v11, 0x1020393

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->minimizeButton:Landroid/widget/ImageButton;

    .line 277
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->minimizeButton:Landroid/widget/ImageButton;

    new-instance v12, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v11, 0x1020392

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->maximizeButton:Landroid/widget/ImageButton;

    .line 279
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->maximizeButton:Landroid/widget/ImageButton;

    new-instance v12, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v11, 0x1020394

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 282
    .local v3, exitButton:Landroid/widget/ImageButton;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;

    iget-object v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {v11, v12}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v11, 0x1020390

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 285
    .local v6, titleText:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 290
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    .end local v3           #exitButton:Landroid/widget/ImageButton;
    .end local v4           #hiddenButton:Landroid/widget/ImageButton;
    .end local v6           #titleText:Landroid/widget/TextView;
    .end local v10           #windowTitleBar:Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 340
    .local v2, decor:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 341
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 342
    .local v1, contentRoot:Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 343
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    .end local v1           #contentRoot:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 352
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 353
    return-void
.end method

.method private fullScreenModeLayout(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 361
    return-void
.end method

.method private splitModeLayout(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 154
    .local v5, inflater:Landroid/view/LayoutInflater;
    new-instance v11, Landroid/view/GestureDetector;

    new-instance v12, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$DoubleTabDetector;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-direct {v11, p1, v12}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mDTD:Landroid/view/GestureDetector;

    .line 156
    const v11, 0x109008a

    invoke-virtual {v5, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 157
    .local v0, borderFrame:Landroid/widget/FrameLayout;
    const v11, 0x109008b

    invoke-virtual {v5, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 158
    .local v8, windowControls:Landroid/view/View;
    const v11, 0x1020389

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 160
    .local v7, windowContentFrame:Landroid/widget/LinearLayout;
    const v11, 0x102038e

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 161
    .local v9, windowResize:Landroid/widget/ImageButton;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-interface {v11}, Landroid/sec/multiwindow/IMultiWindowManager;->getMultiLayout()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 166
    const v11, 0x109008c

    invoke-virtual {v5, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 167
    .local v10, windowTitleBar:Landroid/view/View;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    const v11, 0x1020391

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 170
    .local v4, hiddenButton:Landroid/widget/ImageButton;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$CallLauncherListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v11, 0x1020393

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->minimizeButton:Landroid/widget/ImageButton;

    .line 173
    const v11, 0x1020392

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->maximizeButton:Landroid/widget/ImageButton;

    .line 174
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->minimizeButton:Landroid/widget/ImageButton;

    new-instance v12, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->maximizeButton:Landroid/widget/ImageButton;

    new-instance v12, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v12, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v11, 0x1020394

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 178
    .local v3, exitButton:Landroid/widget/ImageButton;
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;

    iget-object v12, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {v11, v12}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$WindowExitListener;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v11, 0x1020390

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 181
    .local v6, titleText:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v11, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent$PhoneWindowListener;-><init>(Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    .end local v3           #exitButton:Landroid/widget/ImageButton;
    .end local v4           #hiddenButton:Landroid/widget/ImageButton;
    .end local v6           #titleText:Landroid/widget/TextView;
    .end local v10           #windowTitleBar:Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 195
    .local v2, decor:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 196
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 197
    .local v1, contentRoot:Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    .end local v1           #contentRoot:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v11, p0, Lcom/android/internal/policy/impl/MultiPhoneWindowEvent;->mOwner:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 248
    return-void
.end method

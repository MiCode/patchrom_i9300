.class public Landroid/sec/mwdialog/MWDialog;
.super Landroid/app/Dialog;
.source "MWDialog.java"


# instance fields
.field private infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

.field private mAdapter:Landroid/sec/mwdialog/MwAdapter;

.field private mContext:Landroid/content/Context;

.field private mFromComponentName:Landroid/content/ComponentName;

.field public mLaunchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mManager:Landroid/sec/multiwindow/IMultiWindowManager;

.field public mTabButtonClickListener:Landroid/view/View$OnClickListener;

.field public mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "context"
    .parameter "cn"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    .line 33
    iput-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 37
    iput-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;

    .line 99
    new-instance v0, Landroid/sec/mwdialog/MWDialog$1;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWDialog$1;-><init>(Landroid/sec/mwdialog/MWDialog;)V

    iput-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mLaunchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 124
    new-instance v0, Landroid/sec/mwdialog/MWDialog$2;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWDialog$2;-><init>(Landroid/sec/mwdialog/MWDialog;)V

    iput-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 139
    new-instance v0, Landroid/sec/mwdialog/MWDialog$3;

    invoke-direct {v0, p0}, Landroid/sec/mwdialog/MWDialog$3;-><init>(Landroid/sec/mwdialog/MWDialog;)V

    iput-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mTabButtonClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Landroid/sec/mwdialog/MWDialog;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;

    .line 45
    invoke-direct {p0}, Landroid/sec/mwdialog/MWDialog;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Landroid/sec/mwdialog/MWDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/sec/mwdialog/MWDialog;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/mwdialog/MWDialog;)Landroid/sec/multiwindow/IMultiWindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 153
    const/16 v2, 0x7d2

    .line 155
    .local v2, windowType:I
    :try_start_0
    const-class v3, Landroid/view/WindowManager$LayoutParams;

    const-string v4, "TYPE_MINI_APP"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 156
    .local v0, field:Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 167
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v3, 0x1040360

    const/4 v4, -0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 176
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 177
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    const/16 v3, 0x11

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 179
    return-object v1

    .line 162
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 161
    :catch_1
    move-exception v3

    goto :goto_0

    .line 160
    :catch_2
    move-exception v3

    goto :goto_0

    .line 159
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private init()V
    .locals 11

    .prologue
    .line 49
    const-string v6, "MWDialog"

    const-string/jumbo v7, "init"

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0}, Landroid/sec/mwdialog/MWDialog;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 52
    .local v5, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/sec/mwdialog/MWDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 54
    .local v4, mWindow:Landroid/view/Window;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 55
    const v6, 0x106000d

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 56
    const v6, 0x1090088

    invoke-virtual {p0, v6}, Landroid/sec/mwdialog/MWDialog;->setContentView(I)V

    .line 58
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/sec/multiwindow/MultiWindowManager;->getInstance(Landroid/content/Context;)Landroid/sec/multiwindow/IMultiWindowManager;

    move-result-object v6

    iput-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    .line 59
    new-instance v6, Landroid/sec/mwdialog/MwAppInfoLoader;

    iget-object v7, p0, Landroid/sec/mwdialog/MWDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/sec/mwdialog/MwAppInfoLoader;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/sec/mwdialog/MWDialog;->infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

    .line 60
    new-instance v6, Landroid/sec/mwdialog/MwAdapter;

    iget-object v7, p0, Landroid/sec/mwdialog/MWDialog;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/sec/mwdialog/MWDialog;->infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

    invoke-static {}, Landroid/sec/mwdialog/MwAppInfoLoader;->getList()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    const v10, 0x1090089

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/sec/mwdialog/MwAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/sec/multiwindow/IMultiWindowManager;I)V

    iput-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    .line 62
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    .line 63
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    iget-object v7, p0, Landroid/sec/mwdialog/MWDialog;->mFromComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/sec/mwdialog/MwAdapter;->removeItem(Ljava/lang/String;)V

    .line 64
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    invoke-virtual {v6}, Landroid/sec/mwdialog/MwAdapter;->notifyDataSetChanged()V

    .line 69
    :goto_0
    invoke-direct {p0}, Landroid/sec/mwdialog/MWDialog;->setRegistet()V

    .line 71
    const v6, 0x1020380

    invoke-virtual {p0, v6}, Landroid/sec/mwdialog/MWDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 72
    .local v1, list:Landroid/widget/ListView;
    const v6, 0x10807ad

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 73
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mAdapter:Landroid/sec/mwdialog/MwAdapter;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mLaunchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-virtual {v1}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 78
    .local v0, iLis:Landroid/widget/AdapterView$OnItemClickListener;
    const v6, 0x1020382

    invoke-virtual {p0, v6}, Landroid/sec/mwdialog/MWDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 79
    .local v2, mButton_cancel:Landroid/widget/Button;
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mTabButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v6, 0x102037c

    invoke-virtual {p0, v6}, Landroid/sec/mwdialog/MWDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 82
    .local v3, mLinear_side_bar:Landroid/widget/LinearLayout;
    iget-object v6, p0, Landroid/sec/mwdialog/MWDialog;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    return-void

    .line 66
    .end local v0           #iLis:Landroid/widget/AdapterView$OnItemClickListener;
    .end local v1           #list:Landroid/widget/ListView;
    .end local v2           #mButton_cancel:Landroid/widget/Button;
    .end local v3           #mLinear_side_bar:Landroid/widget/LinearLayout;
    :cond_0
    const-string v6, "MWDialog"

    const-string/jumbo v7, "mFromComponentName null"

    invoke-static {v6, v7}, Landroid/sec/multiwindow/MWlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRegistet()V
    .locals 5

    .prologue
    .line 89
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog;->infoLoader:Landroid/sec/mwdialog/MwAppInfoLoader;

    invoke-static {}, Landroid/sec/mwdialog/MwAppInfoLoader;->getList()Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/sec/mwdialog/MwAppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/mwdialog/MwAppInfo;

    .line 91
    .local v0, appInfo:Landroid/sec/mwdialog/MwAppInfo;
    iget-object v3, p0, Landroid/sec/mwdialog/MWDialog;->mManager:Landroid/sec/multiwindow/IMultiWindowManager;

    invoke-virtual {v0}, Landroid/sec/mwdialog/MwAppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/sec/multiwindow/IMultiWindowManager;->registerMultiWindow(Landroid/content/ComponentName;)Landroid/sec/multiwindow/IMultiWindow;

    goto :goto_0

    .line 93
    .end local v0           #appInfo:Landroid/sec/mwdialog/MwAppInfo;
    :cond_0
    return-void
.end method

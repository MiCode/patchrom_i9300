.class public Lcom/android/internal/policy/impl/TickerWidget;
.super Landroid/widget/FrameLayout;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerWidget$14;,
        Lcom/android/internal/policy/impl/TickerWidget$TickerType;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TickerWidget"

.field private static final TICKER_FAILED_MSG_SHOWING_TIME:I = 0x7d0

.field private static final TICKER_REFRESH_WAITING_TIME:I = 0xea60


# instance fields
.field private final MSG_SHOW_NEWS_REFRESH_FAILED:I

.field private final MSG_SHOW_PREVIOUS_NEWS_DATA:I

.field private final MSG_SHOW_PREVIOUS_STOCK_DATA:I

.field private final MSG_SHOW_STOCK_REFRESH_FAILED:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentNewsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStockData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleArrowImage:Landroid/widget/ImageView;

.field private mHandleLogoImage:Landroid/widget/ImageView;

.field private mHandleProgressBar:Landroid/widget/ProgressBar;

.field private mHandleRefreshImage:Landroid/widget/ImageView;

.field private mHandleUpdateDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

.field private mIsDataReady:Z

.field private mIsNewsRefreshFailed:Z

.field private mIsStockRefreshFailed:Z

.field private mNewsOnClickListener:Landroid/view/View$OnClickListener;

.field protected mNewsRefreshing:Z

.field private mOrientation:I

.field private mStockOnClickListener:Landroid/view/View$OnClickListener;

.field private mStockRefreshing:Z

.field mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

.field private mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

.field private mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

.field private mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

.field private mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

.field private mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"
    .parameter "callback"
    .parameter "unlockWidget"

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_NEWS_REFRESH_FAILED:I

    .line 78
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_STOCK_REFRESH_FAILED:I

    .line 79
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_NEWS_DATA:I

    .line 80
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_STOCK_DATA:I

    .line 85
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$1;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$2;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    .line 179
    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 180
    if-eqz p4, :cond_0

    .line 181
    check-cast p4, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local p4
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .line 183
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusable(Z)V

    .line 184
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusableInTouchMode(Z)V

    .line 185
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->setDescendantFocusability(I)V

    .line 187
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    const-string v2, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    :cond_1
    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 196
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 197
    const v2, 0x109005c

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 201
    :goto_0
    const v2, 0x10202fd

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    .line 202
    const v2, 0x1020306

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    .line 203
    const v2, 0x10202fe

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 205
    const v2, 0x1020300

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    .line 206
    const v2, 0x1020301

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    .line 207
    const v2, 0x1020305

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    .line 208
    const v2, 0x1020304

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    .line 209
    const v2, 0x1020302

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    .line 211
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$3;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    .line 230
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$4;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$5;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;)V

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$6;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$7;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;)V

    .line 321
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$8;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$9;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$10;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$11;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 359
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$12;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$13;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$13;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 388
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 389
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 390
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 392
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->getSettingProperies()V

    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    .line 396
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->setSlidingSpeed()V

    .line 397
    return-void

    .line 199
    :cond_2
    const v2, 0x109005d

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V
    .locals 11
    .parameter "status"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 560
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 561
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 562
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 563
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v6, :cond_0

    .line 564
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    .line 572
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/internal/policy/impl/TickerWidget$14;->$SwitchMap$com$android$internal$policy$impl$TickerUtil$TickerStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 603
    :goto_1
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-eqz v6, :cond_3

    .line 604
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    :goto_2
    return-void

    .line 566
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 567
    :cond_2
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v6, :cond_0

    .line 568
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    goto :goto_0

    .line 574
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 575
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 576
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsUpdateDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 580
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v7, 0x1040612

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, newsNoDataMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v4}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 584
    .end local v4           #newsNoDataMessage:Ljava/lang/String;
    :pswitch_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v7, 0x1040614

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, newsNoCountry:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v6, v7, v3, v8}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1

    .line 588
    .end local v3           #newsNoCountry:Ljava/lang/String;
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 589
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 590
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getStockUpdateDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 593
    :pswitch_4
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v7, 0x1040615

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, stockNoItem:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_1

    .line 597
    .end local v5           #stockNoItem:Ljava/lang/String;
    :pswitch_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v7, 0x1040616

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v6, v7, v2, v8}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_1

    .line 606
    .end local v2           #message:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    .line 608
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 610
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setBottomOffset(I)V

    .line 611
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_2

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showNewsRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showStockRefreshFailed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/TickerWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestTickerDataToDemon()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousNewsData()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousStockData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getSettingProperies()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 618
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contents_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    .line 621
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sliding_speed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 622
    .local v0, tickerSpeed:I
    packed-switch v0, :pswitch_data_0

    .line 635
    :goto_1
    return-void

    .line 618
    .end local v0           #tickerSpeed:I
    :cond_0
    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .line 624
    .restart local v0       #tickerSpeed:I
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 627
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 630
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private requestNewsDataToDemon()V
    .locals 5

    .prologue
    .line 687
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "yh_daemon_service_key_service_status"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 688
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    return-void

    .line 690
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v3, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .local v0, component:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 698
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 695
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v3, "com.sec.android.daemonapp.ap.yahoonews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1
.end method

.method private requestStockDataToDemon()V
    .locals 8

    .prologue
    .line 703
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 708
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 709
    const-string v6, "TickerWidget"

    const-string v7, "Yahoo daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.yahoostock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 713
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v0           #component:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :try_start_1
    const-string v6, "com.sec.android.daemonapp.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 719
    const-string v6, "TickerWidget"

    const-string v7, "Edaily  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.stockclock"

    const-string v7, "com.sec.android.daemonapp.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 723
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 724
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_1
    move-exception v2

    .line 725
    .local v2, e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Edaily  daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :try_start_2
    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 729
    const-string v6, "TickerWidget"

    const-string v7, "Sina  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.sinastock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 733
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 734
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    .line 735
    .local v3, e3:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestTickerDataToDemon()V
    .locals 9

    .prologue
    const-wide/32 v7, 0xea60

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x12c1

    const/16 v3, 0x12c0

    .line 658
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_2

    .line 660
    const-string v1, "TickerWidget"

    const-string v2, "Request news data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestNewsDataToDemon()V

    .line 662
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    .line 663
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 666
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 669
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 684
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 671
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_1

    .line 673
    const-string v1, "TickerWidget"

    const-string v2, "Request stock data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestStockDataToDemon()V

    .line 675
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    .line 676
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    .line 679
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 680
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 682
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setSlidingSpeed()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setSlidingSpeed(Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;)V

    .line 497
    return-void
.end method

.method private showNewsRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c2

    .line 445
    const-string v2, "TickerWidget"

    const-string v3, "News Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 450
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040613

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 460
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 461
    return-void
.end method

.method private showPreviousNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 417
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 422
    return-void
.end method

.method private showPreviousStockData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 404
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 410
    return-void
.end method

.method private showStockRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c3

    .line 425
    const-string v2, "TickerWidget"

    const-string v3, "Stock Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 430
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    .line 432
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040613

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 440
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 442
    return-void
.end method

.method private updateNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108045d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 519
    .local v0, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 521
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    .line 522
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 534
    :cond_0
    :goto_1
    return-void

    .line 513
    .end local v0           #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108045c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 523
    .restart local v0       #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 524
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 525
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1

    .line 526
    :cond_3
    if-nez v0, :cond_0

    .line 527
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 528
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateStockData()V
    .locals 3

    .prologue
    .line 539
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080462

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getStockData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    .local v0, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 550
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    .line 551
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 556
    :goto_1
    return-void

    .line 542
    .end local v0           #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080467

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 553
    .restart local v0       #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 554
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateTickerData()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_1

    .line 501
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateNewsData()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_0

    .line 503
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateStockData()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->cleanUp()V

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->cleanUp()V

    .line 655
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 470
    const-string v0, "TickerWidget"

    const-string v1, "onKeyDown at TickerWidget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 483
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 475
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMinTickerHeights()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    if-nez v0, :cond_0

    .line 743
    const/4 v0, 0x0

    .line 745
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getMinTickerHeights()I

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onPause()V

    .line 645
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onPause()V

    .line 646
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onResume()V

    .line 640
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onResume()V

    .line 641
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->close()V

    .line 490
    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startAutoScroll()V
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    .line 754
    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 750
    return-void
.end method

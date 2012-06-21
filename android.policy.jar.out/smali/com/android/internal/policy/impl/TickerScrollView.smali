.class public Lcom/android/internal/policy/impl/TickerScrollView;
.super Landroid/widget/LinearLayout;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerScrollView$6;,
        Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;,
        Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;,
        Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;,
        Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;,
        Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;
    }
.end annotation


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private final VELOCITY_JUDGEMENT_VALUE:I

.field private final VELOCITY_UNITS:I

.field private mContext:Landroid/content/Context;

.field mNewsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

.field private mNewsListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

.field mStockArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;",
            ">;"
        }
    .end annotation
.end field

.field private mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

.field private mStockListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

.field private mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

.field private mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityUnits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->DBG:Z

    .line 51
    const-string v1, "Ticker"

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->TAG:Ljava/lang/String;

    .line 60
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->VELOCITY_UNITS:I

    .line 61
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->VELOCITY_JUDGEMENT_VALUE:I

    .line 63
    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    .line 64
    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    .line 65
    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    .line 66
    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 93
    .local v0, density:F
    const/high16 v1, 0x44fa

    div-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityUnits:I

    .line 95
    new-instance v1, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    .line 96
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :goto_0
    new-instance v1, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    .line 116
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    new-instance v2, Lcom/android/internal/policy/impl/TickerScrollView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerScrollView$1;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    new-instance v2, Lcom/android/internal/policy/impl/TickerScrollView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerScrollView$2;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TickerScrollView;)Lcom/android/internal/policy/impl/TickerCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TickerScrollView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerScrollView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/FrameLayout;
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 139
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .local v3, tempFrameLayout:Landroid/widget/FrameLayout;
    const v4, 0x109005e

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 142
    const v4, 0x1020307

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 143
    .local v2, mHelpText:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v4, 0x1020308

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .local v1, mHelpButton:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    return-object v3
.end method

.method private createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;
    .locals 6
    .parameter "context"
    .parameter "message"
    .parameter "tickerStatus"

    .prologue
    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 153
    .local v0, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 154
    .local v3, tempFrameLayout:Landroid/widget/FrameLayout;
    const v4, 0x109005e

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    const v4, 0x1020307

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    .local v2, mHelpText:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v4, 0x1020308

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    .local v1, mHelpButton:Landroid/widget/TextView;
    sget-object v4, Lcom/android/internal/policy/impl/TickerScrollView$6;->$SwitchMap$com$android$internal$policy$impl$TickerUtil$TickerStatus:[I

    invoke-virtual {p3}, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 247
    :goto_0
    return-object v3

    .line 164
    :pswitch_0
    const v4, 0x1040617

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 165
    new-instance v4, Lcom/android/internal/policy/impl/TickerScrollView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/TickerScrollView$3;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 198
    :pswitch_1
    const v4, 0x1040618

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 199
    new-instance v4, Lcom/android/internal/policy/impl/TickerScrollView$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/TickerScrollView$4;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 233
    :pswitch_2
    const v4, 0x1040619

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 234
    new-instance v4, Lcom/android/internal/policy/impl/TickerScrollView$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/TickerScrollView$5;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "mContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    const/4 v9, -0x1

    .line 289
    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerScrollView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerScrollView;->removeAllViews()V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->clear()V

    .line 295
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerScrollView;->setGravity(I)V

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    .line 299
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_3

    .line 300
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    iget-object v2, v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .line 302
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    iget-object v3, v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .line 303
    .local v3, credit:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    iget-object v4, v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .line 304
    .local v4, publishTime:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;

    iget-object v5, v1, Lcom/android/internal/policy/impl/TickerUtil$NewsData;->NewsURL:Ljava/lang/String;

    .line 307
    .local v5, URL:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .local v0, newsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    if-nez v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 314
    .end local v0           #newsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #credit:Ljava/lang/String;
    .end local v4           #publishTime:Ljava/lang/String;
    .end local v5           #URL:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 315
    new-instance v1, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    const v7, 0x1090060

    iget-object v8, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p1, v7, v8}, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsListAdapter;

    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 317
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsArrayList:Ljava/util/ArrayList;

    .line 319
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    invoke-virtual {p0, v1, v9, v9}, Lcom/android/internal/policy/impl/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 320
    return-void
.end method

.method initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    const/4 v11, -0x1

    .line 323
    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerScrollView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerScrollView;->removeAllViews()V

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->clear()V

    .line 328
    :cond_1
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerScrollView;->setGravity(I)V

    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    .line 331
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_3

    .line 332
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v2, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 333
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v3, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 334
    .local v3, originalPrice:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v4, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 335
    .local v4, changePrice:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v5, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->changePercent:Ljava/lang/String;

    .line 336
    .local v5, changePercent:Ljava/lang/String;
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;

    iget-object v6, v1, Lcom/android/internal/policy/impl/TickerUtil$StockItem;->url:Ljava/lang/String;

    .line 338
    .local v6, uRL:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .local v0, stockData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    if-nez v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 345
    .end local v0           #stockData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #originalPrice:Ljava/lang/String;
    .end local v4           #changePrice:Ljava/lang/String;
    .end local v5           #changePercent:Ljava/lang/String;
    .end local v6           #uRL:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 346
    new-instance v1, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    iget-object v8, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mContext:Landroid/content/Context;

    const v9, 0x1090062

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v8, v9, v10}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;-><init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    .line 347
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListAdapter:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;

    invoke-virtual {v1, v8}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockArrayList:Ljava/util/ArrayList;

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    invoke-virtual {p0, v1, v11, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 351
    return-void
.end method

.method public moveToPage(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mNewsListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->smoothScrollToPositionFromTop(II)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mStockListView:Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;

    invoke-virtual {v0, p1, v2}, Lcom/android/internal/policy/impl/TickerScrollView$TickerListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 252
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 264
    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    iget v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityUnits:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 265
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 266
    .local v1, yVelocity:F
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->DBG:Z

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "yVelocity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 270
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 274
    :cond_2
    const v2, 0x459c4000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/TickerCallback;->closeTickerSlidingDrawer()V

    .line 277
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "tickerStatus"

    .prologue
    const/4 v1, -0x1

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerScrollView;->removeAllViews()V

    .line 635
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setGravity(I)V

    .line 636
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 637
    return-void
.end method

.method setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v1, -0x1

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TickerScrollView;->removeAllViews()V

    .line 628
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setGravity(I)V

    .line 629
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/TickerScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/policy/impl/TickerScrollView;->addView(Landroid/view/View;II)V

    .line 631
    return-void
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 641
    return-void
.end method

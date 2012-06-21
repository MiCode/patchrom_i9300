.class Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;
.super Landroid/widget/FrameLayout;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalStockData"
.end annotation


# instance fields
.field private mStockChange:Landroid/widget/TextView;

.field private mStockName:Landroid/widget/TextView;

.field private mStockPrice:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "price"
    .parameter "change"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    .line 370
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 373
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x1090061

    const/4 v7, 0x1

    invoke-virtual {v4, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 375
    const v6, 0x1020310

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockName:Landroid/widget/TextView;

    .line 376
    const v6, 0x1020311

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockPrice:Landroid/widget/TextView;

    .line 377
    const v6, 0x1020312

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    .line 379
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#,##0.##"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .local v5, priceFormat:Ljava/text/DecimalFormat;
    invoke-static {p4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, formattedPrice:Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v6, "#,##0.##"

    invoke-direct {v1, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, changePriceFormat:Ljava/text/DecimalFormat;
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, formattedChangePrice:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 386
    .local v0, changePrice:Ljava/lang/Double;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 387
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 388
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 421
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockName:Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockPrice:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    return-void

    .line 390
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 391
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, -0xb70100

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, 0x1080461

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 394
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/high16 v7, -0x17

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 395
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, 0x1080466

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 397
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 398
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_4

    .line 399
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, -0x5e5e5f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 401
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    .line 402
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, -0xb87220

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, 0x1080460

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 404
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 405
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/high16 v7, -0x17

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, 0x1080465

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 409
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    .line 410
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 412
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_8

    .line 413
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const/high16 v7, -0x17

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, 0x108045f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 415
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 416
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, -0xb70100

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalStockData;->mStockChange:Landroid/widget/TextView;

    const v7, 0x1080464

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0
.end method

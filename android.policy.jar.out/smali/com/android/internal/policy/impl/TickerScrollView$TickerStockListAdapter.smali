.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerStockListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayout:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p4, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;>;"
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 521
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 522
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    .line 523
    iput p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mLayout:I

    .line 524
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 527
    const/16 v20, 0x0

    .line 528
    .local v20, row:Landroid/view/View;
    if-nez p2, :cond_3

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 530
    .local v11, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->mLayout:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 534
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;

    .line 536
    .local v21, tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockName()Ljava/lang/String;

    move-result-object v16

    .line 537
    .local v16, name:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockPrice()Ljava/lang/String;

    move-result-object v17

    .line 538
    .local v17, price:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockChange()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, change:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->getStockChangeRate()Ljava/lang/String;

    move-result-object v19

    .line 541
    .local v19, rate:Ljava/lang/String;
    const v22, 0x1020314

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 542
    .local v14, mStockName:Landroid/widget/TextView;
    const v22, 0x1020315

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 543
    .local v15, mStockPrice:Landroid/widget/TextView;
    const v22, 0x1020317

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 544
    .local v12, mStockChange:Landroid/widget/TextView;
    const v22, 0x1020318

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 546
    .local v13, mStockChangeRate:Landroid/widget/TextView;
    new-instance v18, Ljava/text/DecimalFormat;

    const-string v22, "#,##0.##"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 547
    .local v18, priceFormat:Ljava/text/DecimalFormat;
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, formattedPrice:Ljava/lang/String;
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v22, "#,##0.##"

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 550
    .local v7, changePriceFormat:Ljava/text/DecimalFormat;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 552
    .local v9, formattedChangePrice:Ljava/lang/String;
    const/4 v8, 0x0

    .line 553
    .local v8, formattedChangePercent:Ljava/lang/String;
    const-string v22, "%"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 554
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v22, "0.00"

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 555
    .local v5, changePercentFormat:Ljava/text/DecimalFormat;
    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 556
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 561
    .end local v5           #changePercentFormat:Ljava/text/DecimalFormat;
    :goto_1
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 562
    .local v6, changePrice:Ljava/lang/Double;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 563
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_5

    .line 564
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 565
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 566
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    :cond_0
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 612
    const v22, 0x1020313

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    const/high16 v23, -0x100

    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 616
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isSinaEnable()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 617
    const v22, 0x1020316

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x4

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    :cond_2
    return-object v20

    .line 532
    .end local v4           #change:Ljava/lang/String;
    .end local v6           #changePrice:Ljava/lang/Double;
    .end local v7           #changePriceFormat:Ljava/text/DecimalFormat;
    .end local v8           #formattedChangePercent:Ljava/lang/String;
    .end local v9           #formattedChangePrice:Ljava/lang/String;
    .end local v10           #formattedPrice:Ljava/lang/String;
    .end local v12           #mStockChange:Landroid/widget/TextView;
    .end local v13           #mStockChangeRate:Landroid/widget/TextView;
    .end local v14           #mStockName:Landroid/widget/TextView;
    .end local v15           #mStockPrice:Landroid/widget/TextView;
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #price:Ljava/lang/String;
    .end local v18           #priceFormat:Ljava/text/DecimalFormat;
    .end local v19           #rate:Ljava/lang/String;
    .end local v21           #tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    :cond_3
    move-object/from16 v20, p2

    goto/16 :goto_0

    .line 558
    .restart local v4       #change:Ljava/lang/String;
    .restart local v7       #changePriceFormat:Ljava/text/DecimalFormat;
    .restart local v8       #formattedChangePercent:Ljava/lang/String;
    .restart local v9       #formattedChangePrice:Ljava/lang/String;
    .restart local v10       #formattedPrice:Ljava/lang/String;
    .restart local v12       #mStockChange:Landroid/widget/TextView;
    .restart local v13       #mStockChangeRate:Landroid/widget/TextView;
    .restart local v14       #mStockName:Landroid/widget/TextView;
    .restart local v15       #mStockPrice:Landroid/widget/TextView;
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #price:Ljava/lang/String;
    .restart local v18       #priceFormat:Ljava/text/DecimalFormat;
    .restart local v19       #rate:Ljava/lang/String;
    .restart local v21       #tickerNewsData:Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
    :cond_4
    move-object/from16 v8, v19

    goto :goto_1

    .line 567
    .restart local v6       #changePrice:Ljava/lang/Double;
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_6

    .line 568
    const v22, -0xb70100

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    const v22, 0x1080461

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 570
    const v22, -0xb70100

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 571
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_0

    .line 572
    const/high16 v22, -0x17

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    const v22, 0x1080466

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 574
    const/high16 v22, -0x17

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 576
    :cond_7
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 577
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_8

    .line 578
    const v22, -0x5e5e5f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 579
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 580
    const v22, -0x5e5e5f

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 581
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_9

    .line 582
    const v22, -0xb87220

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 583
    const v22, 0x1080460

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 584
    const v22, -0xb87220

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 585
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_0

    .line 586
    const/high16 v22, -0x17

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 587
    const v22, 0x1080465

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 588
    const/high16 v22, -0x17

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 591
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_b

    .line 592
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 593
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 594
    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 595
    :cond_b
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_c

    .line 596
    const/high16 v22, -0x17

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    const v22, 0x108045f

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 598
    const/high16 v22, -0x17

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 599
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_0

    .line 600
    const v22, -0xb70100

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 601
    const v22, 0x1080464

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 602
    const v22, -0xb70100

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method

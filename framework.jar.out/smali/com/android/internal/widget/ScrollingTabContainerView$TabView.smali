.class Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Landroid/app/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "tab"
    .parameter "forList"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 377
    const/4 v0, 0x0

    const v1, 0x10102f3

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 378
    iput-object p3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 380
    if-eqz p4, :cond_0

    .line 381
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setGravity(I)V

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 385
    return-void
.end method


# virtual methods
.method public bindTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 390
    return-void
.end method

.method public getTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v1, v1, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 401
    :cond_0
    return-void
.end method

.method public update()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v9, 0x8

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 404
    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/app/ActionBar$Tab;

    .line 405
    .local v5, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, custom:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 407
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 408
    .local v1, customParent:Landroid/view/ViewParent;
    if-eq v1, p0, :cond_1

    .line 409
    if-eqz v1, :cond_0

    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #customParent:Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 411
    :cond_0
    invoke-virtual {v0, v13}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 413
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 415
    :cond_1
    iput-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 416
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    :cond_2
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 418
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    :cond_3
    :goto_0
    return-void

    .line 422
    :cond_4
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 423
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V

    .line 424
    iput-object v10, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;

    .line 427
    :cond_5
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 428
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 430
    .local v6, text:Ljava/lang/CharSequence;
    if-eqz v2, :cond_a

    .line 431
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-nez v8, :cond_6

    .line 432
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 433
    .local v3, iconView:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 435
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 436
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    invoke-virtual {p0, v3, v12}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V

    .line 438
    iput-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    .line 440
    .end local v3           #iconView:Landroid/widget/ImageView;
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 441
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 447
    :cond_7
    :goto_1
    if-eqz v6, :cond_b

    .line 448
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v8, :cond_8

    .line 449
    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10102f5

    invoke-direct {v7, v8, v10, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 452
    .local v7, textView:Landroid/widget/TextView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 454
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x10

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 455
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 459
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V

    .line 460
    iput-object v7, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    .line 462
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #textView:Landroid/widget/TextView;
    :cond_8
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    :cond_9
    :goto_2
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 470
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :cond_a
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v8, :cond_7

    .line 443
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 464
    :cond_b
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_9

    .line 465
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v8, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

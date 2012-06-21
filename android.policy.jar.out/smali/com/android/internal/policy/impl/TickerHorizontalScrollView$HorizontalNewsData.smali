.class Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;
.super Landroid/widget/FrameLayout;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalNewsData"
.end annotation


# instance fields
.field private mAttributionTextView:Landroid/widget/TextView;

.field private mTimeTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "title"
    .parameter "attribution"
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 340
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->this$0:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    .line 341
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 344
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109005f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 346
    const v1, 0x1020309

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mTitleTextView:Landroid/widget/TextView;

    .line 347
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const v1, 0x102030a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    .line 349
    if-eqz p4, :cond_0

    const-string v1, "Associated Press"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const v2, 0x1080459

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 351
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_0
    const v1, 0x102030b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mTimeTextView:Landroid/widget/TextView;

    .line 359
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void

    .line 352
    :cond_0
    if-eqz p4, :cond_1

    const-string v1, "Reuters"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const v2, 0x108045a

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerHorizontalScrollView$HorizontalNewsData;->mAttributionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

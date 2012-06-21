.class Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;
.super Landroid/widget/ImageView;
.source "CircleShortcutWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/CircleShortcutWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutImageView"
.end annotation


# instance fields
.field private mDistanceRatio:D

.field private mIsPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    .line 672
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 676
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 677
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 681
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 683
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 686
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    .line 672
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 687
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 688
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 692
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 694
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 697
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1300()Landroid/graphics/MaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 698
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1500()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 700
    iget-wide v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 701
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1600()Landroid/graphics/Paint;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 702
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 726
    :goto_0
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 727
    new-instance v4, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x4

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 731
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 732
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 735
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    const/high16 v5, 0x4000

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    .line 737
    .local v3, padding:I
    div-int/lit8 v3, v3, 0x2

    .line 740
    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1600()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 742
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1700()Landroid/graphics/Paint;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1800()[I

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 743
    .local v2, glow:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    neg-int v6, v3

    neg-int v7, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->getHeight()I

    move-result v9

    add-int/2addr v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 746
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 749
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #glow:Landroid/graphics/Bitmap;
    .end local v3           #padding:I
    :cond_0
    return-void

    .line 703
    :cond_1
    iget-wide v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide v6, 0x3fe999999999999aL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 706
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1600()Landroid/graphics/Paint;

    move-result-object v4

    const-wide/high16 v5, 0x4040

    iget-wide v7, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    mul-double/2addr v5, v7

    const-wide v7, 0x3fb999999999999aL

    div-double/2addr v5, v7

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 707
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 709
    :cond_2
    iget-wide v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v6, 0x3ff0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    .line 710
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1600()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 711
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 713
    :cond_3
    iget-wide v4, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide v6, 0x3ff4cccccccccccdL

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    .line 714
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1600()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 717
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    const-wide v5, 0x4055400000000000L

    iget-wide v7, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    const-wide/high16 v9, 0x3ff0

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    const-wide v7, 0x3fb999999999999aL

    div-double/2addr v5, v7

    double-to-int v5, v5

    rsub-int v5, v5, 0xff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 720
    :cond_4
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1600()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 721
    invoke-static {}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->access$1400()Landroid/graphics/Paint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0
.end method

.method public onPressed(Z)V
    .locals 2
    .parameter "pressed"

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mIsPressed:Z

    .line 753
    if-eqz p1, :cond_0

    .line 754
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->postInvalidate()V

    .line 756
    return-void
.end method

.method public setDistanceRatio(D)V
    .locals 0
    .parameter "distanceRatio"

    .prologue
    .line 759
    iput-wide p1, p0, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->mDistanceRatio:D

    .line 760
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleShortcutWidget$ShortcutImageView;->postInvalidate()V

    .line 761
    return-void
.end method

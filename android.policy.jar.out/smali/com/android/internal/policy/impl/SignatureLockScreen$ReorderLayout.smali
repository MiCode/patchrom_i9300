.class Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;
.super Landroid/widget/FrameLayout;
.source "SignatureLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SignatureLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReorderLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 505
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 509
    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 513
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/SignatureLockScreen$ReorderLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    .line 518
    .local v0, id:I
    move v1, p2

    .line 520
    .local v1, order:I
    const v2, 0x1020359

    if-ne v2, v0, :cond_1

    .line 521
    add-int/lit8 v1, p1, -0x2

    .line 526
    :cond_0
    :goto_0
    return v1

    .line 522
    :cond_1
    const v2, 0x1020358

    if-ne v2, v0, :cond_0

    .line 523
    add-int/lit8 v1, p1, -0x1

    goto :goto_0
.end method

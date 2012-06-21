.class public Landroid/widget/CheckBox;
.super Landroid/widget/CompoundButton;
.source "CheckBox.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 82
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040588

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x1040589

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

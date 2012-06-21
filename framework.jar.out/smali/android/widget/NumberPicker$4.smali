.class Landroid/widget/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 638
    iget-object v2, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 639
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x42

    if-ne p2, v2, :cond_1

    .line 640
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020395

    if-ne v2, v3, :cond_0

    .line 641
    iget-object v1, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;Z)V

    .line 648
    :goto_0
    return v0

    .line 644
    :cond_0
    iget-object v2, p0, Landroid/widget/NumberPicker$4;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->changeCurrentByOne(Z)V
    invoke-static {v2, v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 648
    goto :goto_0
.end method

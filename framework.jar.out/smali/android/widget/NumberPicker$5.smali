.class Landroid/widget/NumberPicker$5;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 666
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v4, 0x0

    .line 668
    if-eqz p2, :cond_2

    .line 669
    iget-object v2, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    .line 670
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 671
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 676
    .local v1, mKeyboard:I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 688
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #mKeyboard:I
    :cond_0
    :goto_0
    return-void

    .line 682
    .restart local v0       #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .restart local v1       #mKeyboard:I
    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 685
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #mKeyboard:I
    :cond_2
    iget-object v2, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 686
    iget-object v2, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v2, p1}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method

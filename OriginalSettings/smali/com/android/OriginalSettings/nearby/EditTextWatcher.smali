.class public Lcom/android/OriginalSettings/nearby/EditTextWatcher;
.super Ljava/lang/Object;
.source "EditTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "edit"

    .prologue
    const/4 v5, 0x0

    .line 30
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    instance-of v4, v4, Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 32
    const/4 v3, 0x0

    .line 33
    .local v3, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 34
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, deviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x20

    if-ne v4, v6, :cond_0

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 45
    const/16 v4, 0x37

    if-le v2, v4, :cond_2

    .line 47
    const-string v4, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: Device Name Limit is 55. text length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 49
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 50
    iget-object v4, p0, Lcom/android/OriginalSettings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f0d0938

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 53
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #spaceNum:I
    :cond_2
    return-void

    .restart local v0       #deviceName:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #spaceNum:I
    :cond_3
    move v4, v5

    .line 43
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 59
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 65
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/OriginalSettings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    .line 26
    return-void
.end method

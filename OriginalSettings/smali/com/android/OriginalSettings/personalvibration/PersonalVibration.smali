.class public Lcom/android/OriginalSettings/personalvibration/PersonalVibration;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;
    }
.end annotation


# instance fields
.field backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

.field buttonLayout:Landroid/widget/LinearLayout;

.field centerButton:Landroid/widget/Button;

.field centerText:Landroid/widget/TextView;

.field leftButton:Landroid/widget/Button;

.field mDialog:Landroid/app/AlertDialog;

.field private mEditPattern:Landroid/widget/TextView;

.field private mFromContact:Ljava/lang/Boolean;

.field mHandler:Landroid/os/Handler;

.field mOkBtn:Landroid/widget/Button;

.field patternLong:[J

.field rightButton:Landroid/widget/Button;

.field stopButton:Landroid/widget/Button;

.field stopButtonLayout:Landroid/widget/LinearLayout;

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 56
    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->patternLong:[J

    .line 177
    return-void
.end method

.method public static StringToLongArray(Ljava/lang/String;)[J
    .locals 7
    .parameter "string"

    .prologue
    .line 336
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, temp:[Ljava/lang/String;
    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StringToLongArray, size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 342
    const-string v3, "PersonalVibration"

    const-string v4, "string is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, 0x0

    .line 353
    :cond_0
    return-object v1

    .line 346
    :cond_1
    array-length v3, v2

    new-array v1, v3, [J

    .line 348
    .local v1, ret:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 349
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 351
    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v1, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "editable"

    .prologue
    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, length:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 361
    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged(), stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_1

    .line 363
    :cond_0
    if-gtz v0, :cond_2

    .line 365
    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 377
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->patternLong:[J

    .line 222
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->patternLong:[J

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->patternLong:[J

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v1, v13, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setRunPlayTimer()V

    .line 225
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020218

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setPauseTimer()V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 246
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leftButton is clicked, backView state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_6

    .line 251
    const/4 v7, 0x0

    .line 252
    .local v7, count:I
    const/16 v9, 0x1a

    .line 254
    .local v9, maxLength:I
    const-string v0, "PersonalVibration"

    const-string v1, "Save button was clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 259
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 264
    :cond_5
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodManager;

    .line 267
    .local v8, imm:Landroid/view/inputmethod/InputMethodManager;
    const v0, 0x7f040071

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 268
    .local v10, view:Landroid/view/View;
    const v0, 0x7f0a0152

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    .line 269
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const v1, 0x7f0d0924

    new-array v2, v11, [Ljava/lang/Object;

    add-int/lit8 v3, v7, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 271
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    new-array v1, v11, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 272
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0920

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;

    invoke-direct {v2, p0, v8}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$2;-><init>(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d077d

    new-instance v2, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$1;

    invoke-direct {v2, p0, v8}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$1;-><init>(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 319
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 320
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 322
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 325
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v8           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #maxLength:I
    .end local v10           #view:Landroid/view/View;
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 326
    const v0, 0x7f0d091f

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 329
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopRecording()V

    .line 331
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 101
    const-string v0, "PersonalVibration"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopRecording()V

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "PersonalVibration"

    const-string v1, "save dialog is displayed so calling addTextChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    :cond_1
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v1, "PersonalVibration"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const v1, 0x7f040072

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->setContentView(I)V

    .line 67
    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0a0153

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    .line 70
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    const v1, 0x7f0a014b

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    .line 73
    const v1, 0x7f0a0154

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    .line 74
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    .line 75
    const v1, 0x7f0a0157

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    .line 76
    const v1, 0x7f0a0156

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    .line 77
    const v1, 0x7f0a0155

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    new-instance v1, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/OriginalSettings/personalvibration/PersonalVibration;Lcom/android/OriginalSettings/personalvibration/PersonalVibration$1;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    .line 85
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setHandler(Landroid/os/Handler;)V

    .line 86
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    .line 88
    invoke-static {p0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->setRequestedOrientation(I)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    .line 95
    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromContact : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 126
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopRecording()V

    .line 122
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    .line 131
    const-string v0, "PersonalVibration"

    const-string v1, "onResume() : stage is recording so stop recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopRecording()V

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 135
    :cond_0
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 382
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 142
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 144
    :pswitch_0
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    :pswitch_1
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->getStage()Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/OriginalSettings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->runRecording()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method runRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setRunRecordingTimer()V

    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->patternLong:[J

    .line 166
    return-void
.end method

.method stopRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->backView:Lcom/android/OriginalSettings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/personalvibration/BackgroundView;->setStopTimer()V

    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    return-void
.end method

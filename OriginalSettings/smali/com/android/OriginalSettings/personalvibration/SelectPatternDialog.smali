.class public Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field ButtonCenter:Landroid/widget/Button;

.field mCurrentSelection:I

.field private mExistingUri:Ljava/lang/String;

.field private mFromContact:Ljava/lang/Boolean;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field mOkBtn:Landroid/widget/Button;

.field private mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

.field private mShowDefault:Ljava/lang/Boolean;

.field private mStaticItem:I

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 80
    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    .line 81
    iput-object v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->ButtonCenter:Landroid/widget/Button;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;)Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "editable"

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, length:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 357
    if-gtz v0, :cond_0

    .line 358
    const-string v1, "SelectPatternDialog"

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

    .line 359
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 369
    return-void
.end method

.method public deletePattern(I)Z
    .locals 9
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 276
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePattern() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 280
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 281
    .local v8, id:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 283
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 287
    .local v7, count:I
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentSelection()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 379
    const/4 v7, -0x1

    .line 380
    .local v7, keyID:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 381
    .local v9, temp:Ljava/lang/String;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSelection() temp : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 384
    iget-object v9, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 390
    :cond_0
    if-nez v9, :cond_2

    move v0, v10

    .line 423
    :goto_0
    return v0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 386
    const-string v0, "SelectPatternDialog"

    const-string v1, "getCurrentSelection(),  (mFromContact && mExistingUri == null) is true, return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 395
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 396
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 403
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 407
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    if-eqz v6, :cond_8

    .line 410
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 412
    :cond_4
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v7, v0, :cond_6

    .line 413
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 414
    .local v8, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSelection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 416
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v0, v8

    goto/16 :goto_0

    .end local v8           #position:I
    :cond_5
    move v0, v10

    .line 405
    goto/16 :goto_0

    .line 418
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 420
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v10

    .line 423
    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 431
    packed-switch p2, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 433
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int v11, v0, v1

    .line 434
    .local v11, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, -0x1

    if-ne v11, v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 but from Contacts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v12, resultIntent:Landroid/content/Intent;
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->finish()V

    goto :goto_0

    .line 443
    .end local v12           #resultIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 so break"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 448
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 449
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 450
    .local v8, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 452
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 454
    .restart local v12       #resultIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 455
    .local v10, pickedUriString:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 456
    .local v9, pickedUri:Landroid/net/Uri;
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 457
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 462
    .end local v9           #pickedUri:Landroid/net/Uri;
    .end local v10           #pickedUriString:Ljava/lang/String;
    .end local v12           #resultIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 459
    :cond_2
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : OK button is clicked before uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 466
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v11           #position:I
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->setResult(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 471
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 472
    .local v7, i:Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.personalvibration.PersonalVibration"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    const-string v0, "android.intent.extra.pattern.FROM_CONTACT"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 475
    const/high16 v0, 0x200

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->startActivity(Landroid/content/Intent;)V

    .line 478
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 431
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 218
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 219
    .local v1, menuItemIndex:I
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v6, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected] :  info.position, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v5, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    packed-switch v1, :pswitch_data_0

    .line 237
    :goto_0
    return v7

    .line 224
    :pswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->deletePattern(I)Z

    .line 225
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 226
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    .line 227
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 228
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 229
    iget-object v2, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 91
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    .line 94
    const-string v7, "show_default"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    .line 97
    const-string v7, "android.intent.extra.pattern.EXISTING_URI"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 100
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    new-instance v7, Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    .line 103
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 105
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 107
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0919

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 108
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04004f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 109
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    const v7, 0x7f0d010e

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 113
    const v7, 0x7f0d077d

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 114
    const v7, 0x7f0d07a2

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 115
    iget-object v7, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v8, 0x7f0a00aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    .line 117
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x10900fe

    iget-object v9, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 121
    .local v5, textView:Landroid/widget/CheckedTextView;
    const-string v7, "SelectPatternDialog"

    const-string v8, "tw_select_dialog_singlechoice_holo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const v7, 0x7f0d055c

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 125
    const/high16 v7, 0x41a0

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setTextSize(F)V

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 128
    .local v6, wm:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 133
    .local v1, density:I
    const/high16 v7, 0x4282

    int-to-float v8, v1

    const/high16 v9, 0x4320

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 134
    .local v4, pixelHeight:I
    invoke-virtual {v5, v4}, Landroid/widget/CheckedTextView;->setHeight(I)V

    .line 135
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 136
    iput v11, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 139
    .end local v1           #density:I
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #pixelHeight:I
    .end local v5           #textView:Landroid/widget/CheckedTextView;
    .end local v6           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/OriginalSettings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->setupAlert()V

    .line 144
    new-instance v7, Landroid/os/Vibrator;

    invoke-direct {v7}, Landroid/os/Vibrator;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v7

    iput v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 147
    iget v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 148
    const-string v7, "SelectPatternDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate() positoin : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v8, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v7, v8, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 150
    iget-object v7, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v8, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v7, "SelectPatternDialog"

    const-string v8, "onCreate() positoin : -1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v5, 0x7f0d0084

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 183
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00aa

    if-ne v0, v1, :cond_0

    move-object v7, p3

    .line 184
    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 197
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_1

    .line 198
    const-string v0, "SelectPatternDialog"

    const-string v1, "onCreateContextMenu] : Noting to add"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v7           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local v7       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    if-ne v0, v1, :cond_2

    .line 201
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 207
    :goto_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, c:Landroid/database/Cursor;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 209
    const-string v0, "vibration_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, menu_title:Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 203
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #menu_title:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    const v1, 0x7f0d069a

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 204
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 245
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 248
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 249
    const-string v0, "SelectPatternDialog"

    const-string v1, "onItemClick() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, temp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 255
    .local v8, patternLong:[J
    if-eqz v8, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    .line 258
    .end local v8           #patternLong:[J
    .end local v9           #patternString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 273
    .end local v10           #temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 262
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 264
    .restart local v6       #c:Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 265
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 266
    .local v7, index:I
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 267
    .restart local v9       #patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/OriginalSettings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 268
    .restart local v8       #patternLong:[J
    if-eqz v8, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    .line 270
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 485
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 487
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->finish()V

    .line 179
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 169
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 375
    return-void
.end method

.method showRenameDialog(I)Z
    .locals 14
    .parameter "position"

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 291
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRenameDialog() position : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 294
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 295
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.getPosition() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const v0, 0x7f040071

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 302
    .local v12, view:Landroid/view/View;
    const v0, 0x7f0a0152

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 303
    .local v6, EditPattern:Landroid/widget/TextView;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 304
    .local v8, id:I
    const/16 v11, 0x1a

    .line 306
    .local v11, maxLength:I
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 307
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v0, "vibration_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 309
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move-object v0, v6

    .line 310
    check-cast v0, Landroid/widget/EditText;

    new-array v1, v13, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 311
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0920

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d077d

    new-instance v2, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog$2;

    invoke-direct {v2, p0, v6, v8, v9}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog$2;-><init>(Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d010e

    new-instance v2, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog$1;

    invoke-direct {v2, p0, v9, v6}, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog$1;-><init>(Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 342
    .local v10, mDialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 343
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 345
    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    .line 346
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 348
    return v13
.end method

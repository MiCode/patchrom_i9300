.class public final Lcom/android/internal/app/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 65
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 68
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 71
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 74
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 98
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$1;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/RingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/RingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 259
    const v0, 0x1040499

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 263
    const v0, 0x104049b

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 6
    .parameter "listView"
    .parameter "textResId"

    .prologue
    const/4 v5, 0x0

    .line 239
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 241
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103ec

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 243
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900fe

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 252
    .local v1, textView:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 253
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 254
    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 255
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 248
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900bc

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 419
    if-gez p1, :cond_0

    .line 421
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 413
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getTelephonyService()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .prologue
    .line 321
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 322
    .local v0, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-nez v0, :cond_0

    .line 323
    const-string v1, "RingtonePickerActivity"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    return-object v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 317
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 410
    :cond_1
    return-void
.end method


# virtual methods
.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 426
    const-string v8, "content://media/internal/audio/media"

    .line 427
    .local v8, uriString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 428
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 430
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windstar The path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windstar The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 438
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 439
    const-string v0, "RingtonePickerActivity"

    const-string v2, " The path is exist in the DB"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 441
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 442
    .local v7, j:I
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 445
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 450
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #j:I
    :goto_0
    return-object v0

    .line 449
    :cond_0
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "windstar not Found The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 270
    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    .line 273
    .local v0, positiveResult:Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 275
    if-eqz v0, :cond_3

    .line 276
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 277
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 279
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 289
    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v5, v1}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 295
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/RingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/internal/app/RingtonePickerActivity$2;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    .line 302
    return-void

    .end local v0           #positiveResult:Z
    :cond_0
    move v0, v3

    .line 270
    goto :goto_0

    .line 282
    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    .line 284
    const/4 v2, 0x0

    goto :goto_1

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 292
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 116
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 120
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 126
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 127
    const-string v4, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 128
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 129
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 132
    :cond_0
    if-eqz p1, :cond_1

    .line 133
    const-string v4, "clicked_pos"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 136
    :cond_1
    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    .line 141
    new-instance v4, Landroid/media/RingtoneManager;

    invoke-direct {v4, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 144
    const-string v4, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    .local v0, includeDrm:Z
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 149
    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 150
    .local v3, types:I
    if-eq v3, v6, :cond_2

    .line 151
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 154
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 157
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 160
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 163
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 164
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 165
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 166
    const-string/jumbo v4, "title"

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 167
    iput-boolean v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 168
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 169
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 170
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 172
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 173
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 175
    const-string v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 176
    iget-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    .line 177
    const v4, 0x104049c

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->setupAlert()V

    .line 181
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 308
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 309
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 312
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 396
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 397
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    .line 399
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, -0x1

    .line 191
    iget-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 194
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 199
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v1, :cond_1

    .line 200
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 203
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 204
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 208
    :cond_1
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v3, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 214
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v3, :cond_3

    .line 215
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 217
    const-string v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrepareListView : mClickedPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    .end local v0           #uri:Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 227
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 186
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 391
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 392
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 331
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_2

    .line 333
    :try_start_0
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isRinging : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOffhook : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 336
    :cond_0
    const-string v3, "RingtonePickerActivity"

    const-string v4, "don\'t play ringtone: return called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "RingtonePickerActivity"

    const-string v4, "ITelephony threw RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_3

    .line 345
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    goto :goto_0

    .line 353
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->stop()V

    .line 355
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 359
    :cond_4
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_6

    .line 360
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v3, :cond_5

    .line 361
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 366
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v3, :cond_5

    .line 367
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 369
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 377
    .local v1, ringtone:Landroid/media/Ringtone;
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v3}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 383
    :goto_1
    if-eqz v1, :cond_1

    .line 384
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 380
    .end local v1           #ringtone:Landroid/media/Ringtone;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v1

    .restart local v1       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method

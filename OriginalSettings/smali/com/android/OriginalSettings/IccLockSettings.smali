.class public Lcom/android/OriginalSettings/IccLockSettings;
.super Lmiui/preference/BasePreferenceActivity;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/OriginalSettings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

.field private mPinToggle:Landroid/preference/CheckBoxPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mSimState:Ljava/lang/String;

.field private mToState:Z

.field private num_of_retry:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lmiui/preference/BasePreferenceActivity;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    .line 123
    new-instance v0, Lcom/android/OriginalSettings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/IccLockSettings$1;-><init>(Lcom/android/OriginalSettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/android/OriginalSettings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/IccLockSettings$2;-><init>(Lcom/android/OriginalSettings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->iccLockNotAllowed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/IccLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/IccLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/IccLockSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method private final displayMessage(I)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/IccLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 477
    return-void
.end method

.method private getSimLockInfoResult()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 481
    const-string v1, "IccLockSettings"

    const-string v2, "getSimLockInfoResult()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v1

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0d0996

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 486
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->finish()V

    .line 490
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPinRetry()I

    move-result v0

    goto :goto_0
.end method

.method private iccLockChanged(Z)V
    .locals 2
    .parameter "success"

    .prologue
    .line 502
    if-eqz p1, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 506
    const-string v0, "ATT"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-boolean v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->toggleSimPin(Z)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 518
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 519
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d03c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private iccLockNotAllowed()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d0997

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    return-void
.end method

.method private iccPinChanged(Z)V
    .locals 3
    .parameter "success"

    .prologue
    const/4 v2, 0x0

    .line 522
    if-nez p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d03c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 532
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 533
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d03c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 546
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 547
    :cond_0
    const/4 v0, 0x0

    .line 549
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resetDialogState()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 555
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 556
    const-string v0, ""

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 557
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->setDialogValues()V

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 559
    return-void
.end method

.method private setDialogValues()V
    .locals 8

    .prologue
    const v7, 0x7f0d03bf

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 331
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 332
    const-string v1, ""

    .line 335
    .local v1, message:Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    .line 336
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDialogValues: num_of_retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sim.state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v2, "ABSENT"

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UNKNOWN"

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mSimState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    :cond_0
    iput v5, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    .line 345
    :goto_0
    const-string v2, "IccLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDialogValues: num_of_retry change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    if-gt v2, v6, :cond_1

    iget v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    if-nez v2, :cond_4

    .line 350
    :cond_1
    const v2, 0x7f0d0995

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, Remain_Unblock_Count:Ljava/lang/String;
    :goto_1
    iget v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v2, :pswitch_data_0

    .line 378
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 383
    return-void

    .line 342
    .end local v0           #Remain_Unblock_Count:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->getSimLockInfoResult()I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    goto :goto_0

    .line 353
    :cond_4
    const v2, 0x7f0d0994

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/OriginalSettings/IccLockSettings;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/IccLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #Remain_Unblock_Count:Ljava/lang/String;
    goto :goto_1

    .line 360
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d03b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d03ba

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d03bb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 366
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d03bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 370
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d03bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 374
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d03be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->setDialogValues()V

    .line 327
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/EditPinPreference;->showPinDialog()V

    goto :goto_0
.end method

.method private toggleSimPin(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    const v0, 0x7f0d0021

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->displayMessage(I)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    const v0, 0x7f0d0022

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->displayMessage(I)V

    goto :goto_0
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 457
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 458
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .prologue
    .line 536
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 537
    .local v0, callback:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 542
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 543
    return-void
.end method

.method private updatePreferences()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "Monkey test is enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->finish()V

    .line 247
    :goto_0
    return-void

    .line 211
    :cond_0
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 213
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/EditPinPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    .line 214
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    .line 215
    if-eqz p1, :cond_1

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 217
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 218
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 219
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    .line 222
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 239
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/OriginalSettings/EditPinPreference$OnPinEnteredListener;)V

    .line 242
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 245
    invoke-virtual {p0}, Lcom/android/OriginalSettings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 246
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->updatePreferences()V

    goto :goto_0

    .line 224
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    goto :goto_1

    .line 228
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 229
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    goto :goto_1

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    return-void
.end method

.method public onPinEntered(Lcom/android/OriginalSettings/EditPinPreference;Z)V
    .locals 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 386
    if-nez p2, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    .line 428
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string v0, "IccLockSettings"

    const-string v1, "onPinEntered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {p1}, Lcom/android/OriginalSettings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d0998

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 396
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 399
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 401
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->tryChangeIccLockState()V

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 405
    iput v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 406
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 407
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 412
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 413
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 414
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 417
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0d03c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 419
    iput v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 420
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 423
    :cond_2
    iput-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    .line 424
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 431
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 432
    const-string v2, "IccLockSettings"

    const-string v3, "onPreferenceTreeClick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    .line 436
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 440
    iput v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    .line 441
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    :cond_1
    move v0, v1

    .line 446
    :goto_0
    return v0

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    if-ne p2, v2, :cond_1

    .line 443
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-super {p0}, Lmiui/preference/BasePreferenceActivity;->onResume()V

    .line 263
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 264
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/OriginalSettings/IccLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/EditPinPreference;->setEnabled(Z)V

    .line 273
    iget v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    if-eqz v1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->showPinDialog()V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/IccLockSettings;->resetDialogState()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mPinDialog:Lcom/android/OriginalSettings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    iget v0, p0, Lcom/android/OriginalSettings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 303
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/OriginalSettings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/BasePreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public Lcom/android/OriginalSettings/CryptKeeper;
.super Lcom/android/OriginalSettings/BaseActivity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;,
        Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;,
        Lcom/android/OriginalSettings/CryptKeeper$Blank;,
        Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field private static emergencyCallStatus:Z

.field private static failedAttemptsCount:I

.field private static mCooldown:I

.field private static mSavedPassword:Ljava/lang/String;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mEncrypt:Z

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    sput v1, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 106
    sput-boolean v1, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    .line 107
    sput v1, Lcom/android/OriginalSettings/CryptKeeper;->failedAttemptsCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/BaseActivity;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncrypt:Z

    .line 222
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/CryptKeeper$1;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/OriginalSettings/CryptKeeper;->failedAttemptsCount:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput p0, Lcom/android/OriginalSettings/CryptKeeper;->failedAttemptsCount:I

    return p0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-object p0, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput-boolean p0, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    sput p0, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/CryptKeeper;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/CryptKeeper;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateEmergencyCallButtonState()V

    return-void
.end method

.method private encryptionProgressInit()V
    .locals 4

    .prologue
    .line 395
    const-string v2, "CryptKeeper"

    const-string v3, "Encryption progress screen initializing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 397
    const-string v2, "CryptKeeper"

    const-string v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 399
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CryptKeeper"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 400
    iget-object v2, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 403
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v2, 0x7f0a0055

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 404
    .local v1, progressBar:Landroid/widget/ProgressBar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 406
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateProgress()V

    .line 407
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 607
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 608
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 609
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 611
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 735
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 736
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$8;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/CryptKeeper$8;-><init>(Lcom/android/OriginalSettings/CryptKeeper;JJ)V

    invoke-virtual {v0}, Lcom/android/OriginalSettings/CryptKeeper$8;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 775
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 567
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 570
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 572
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 574
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 600
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 575
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 578
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 579
    add-int/lit8 v2, v2, 0x1

    .line 580
    goto :goto_0

    .line 583
    :cond_2
    const/4 v0, 0x0

    .line 584
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 585
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 586
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 589
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 594
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 595
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 596
    goto :goto_0

    .line 600
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .parameter "viewType"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 699
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 726
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/OriginalSettings/CryptKeeper;->emergencyCallStatus:Z

    .line 727
    return-void
.end method

.method private passwordEntryInit()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 477
    const v7, 0x7f0a0053

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 478
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 479
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 481
    new-instance v6, Lcom/android/OriginalSettings/CryptKeeper$4;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/CryptKeeper$4;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    .line 499
    .local v6, watcher:Landroid/text/TextWatcher;
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 501
    const v7, 0x7f0a0060

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 502
    .local v2, imeSwitcher:Landroid/view/View;
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 504
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    invoke-direct {p0, v3, v11}, Lcom/android/OriginalSettings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 505
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 506
    new-instance v7, Lcom/android/OriginalSettings/CryptKeeper$5;

    invoke-direct {v7, p0, v3}, Lcom/android/OriginalSettings/CryptKeeper$5;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    :cond_0
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/OriginalSettings/CryptKeeper$6;

    invoke-direct {v8, p0, v3}, Lcom/android/OriginalSettings/CryptKeeper$6;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 529
    const v7, 0x7f0a002a

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 530
    .local v5, tv:Landroid/widget/TextView;
    const v7, 0x7f0d07ca

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 532
    .local v4, tempStatus:Ljava/lang/CharSequence;
    sget v7, Lcom/android/OriginalSettings/CryptKeeper;->failedAttemptsCount:I

    if-eqz v7, :cond_1

    .line 533
    sget v7, Lcom/android/OriginalSettings/CryptKeeper;->failedAttemptsCount:I

    const/16 v8, 0x14

    if-ge v7, v8, :cond_5

    .line 534
    const v7, 0x7f0d0698

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 541
    :cond_1
    :goto_0
    sget-object v7, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 542
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v8, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 544
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 547
    :cond_2
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v7, :cond_3

    .line 548
    iget-object v7, p0, Lcom/android/OriginalSettings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->cancel()V

    .line 552
    :cond_3
    sget v7, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    if-eqz v7, :cond_4

    .line 553
    sget v7, Lcom/android/OriginalSettings/CryptKeeper;->mCooldown:I

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/CryptKeeper;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 554
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->handleAttemptLockout(J)V

    .line 556
    .end local v0           #deadline:J
    :cond_4
    return-void

    .line 536
    :cond_5
    new-array v7, v12, [Ljava/lang/CharSequence;

    sget v8, Lcom/android/OriginalSettings/CryptKeeper;->failedAttemptsCount:I

    rsub-int/lit8 v8, v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private replaceInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "in"

    .prologue
    .line 621
    if-nez p1, :cond_0

    .line 622
    const-string v0, ""

    .line 627
    :goto_0
    return-object v0

    .line 625
    :cond_0
    move-object v0, p1

    .line 626
    .local v0, out:Ljava/lang/String;
    const/16 v1, 0x20

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 627
    goto :goto_0
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 711
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 712
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 714
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupUi()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f040031

    .line 330
    iget-boolean v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v4, :cond_0

    const-string v4, "error"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 332
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->showFactoryReset()V

    .line 356
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    const-string v4, "vold.encrypt_progress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, progress:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "progress"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 338
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 340
    const-string v3, "vold.encrypt_type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, type:Ljava/lang/String;
    const-string v3, "decrypt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 342
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncrypt:Z

    .line 343
    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 344
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f0d07c6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 347
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 348
    .end local v2           #type:Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationComplete:Z

    if-eqz v4, :cond_6

    .line 349
    const v3, 0x7f04002f

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->setContentView(I)V

    .line 350
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 351
    :cond_6
    iget-boolean v4, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationRequested:Z

    if-nez v4, :cond_1

    .line 353
    new-instance v4, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;

    invoke-direct {v4, p0, v3}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/OriginalSettings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 354
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 411
    const v3, 0x7f0a0061

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 414
    const v3, 0x7f0a0062

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 415
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 416
    new-instance v3, Lcom/android/OriginalSettings/CryptKeeper$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/CryptKeeper$3;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 424
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f0d014f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 426
    const v3, 0x7f0a002a

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 427
    .restart local v1       #tv:Landroid/widget/TextView;
    const v3, 0x7f0d0150

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 429
    const v3, 0x7f0a0063

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :cond_0
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 703
    sget-object v0, Lcom/android/OriginalSettings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->resumeCall()V

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 667
    const v5, 0x7f0a005f

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 669
    .local v0, button:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 696
    :goto_0
    return-void

    .line 671
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 672
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 673
    new-instance v5, Lcom/android/OriginalSettings/CryptKeeper$7;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/CryptKeeper$7;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    sget-object v5, Lcom/android/OriginalSettings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 685
    .local v2, newState:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 687
    const v4, 0x7f0d06f0

    .line 688
    .local v4, textId:I
    const v3, 0x7f020217

    .line 689
    .local v3, phoneCallIcon:I
    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 695
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 679
    .end local v2           #newState:I
    .end local v4           #textId:I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 691
    .restart local v2       #newState:I
    :cond_2
    const v4, 0x7f0d06ef

    .line 692
    .restart local v4       #textId:I
    const v1, 0x7f0200b6

    .line 693
    .local v1, emergencyIcon:I
    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 12

    .prologue
    const v11, 0x7f0d014c

    const v10, 0x7f0a002a

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 436
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, state:Ljava/lang/String;
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->showFactoryReset()V

    .line 474
    :goto_0
    return-void

    .line 443
    :cond_0
    const/4 v1, 0x0

    .line 446
    .local v1, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/16 v1, 0x32

    .line 451
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 452
    .local v3, status:Ljava/lang/CharSequence;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-nez v1, :cond_2

    .line 457
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 458
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f0d07be

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 446
    .end local v3           #status:Ljava/lang/CharSequence;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 461
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #status:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/android/OriginalSettings/CryptKeeper;->mEncrypt:Z

    if-ne v5, v8, :cond_3

    .line 462
    invoke-virtual {p0, v11}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 467
    :goto_3
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 468
    .restart local v4       #tv:Landroid/widget/TextView;
    new-array v5, v8, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 464
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_3
    const v5, 0x7f0d07c7

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/OriginalSettings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 262
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->finish()V

    .line 282
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 268
    instance-of v1, v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_2

    .line 269
    check-cast v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    .line 270
    iget-object v0, v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 271
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/OriginalSettings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 275
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/CryptKeeper$2;-><init>(Lcom/android/OriginalSettings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 281
    sget-object v0, Lcom/android/OriginalSettings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 380
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onDestroy()V

    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-object v0, Lcom/android/OriginalSettings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 385
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 388
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 632
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 634
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 656
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 641
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    const-string v3, ""

    sput-object v3, Lcom/android/OriginalSettings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 648
    iget-object v3, p0, Lcom/android/OriginalSettings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 649
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/CryptKeeper;->replaceInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v3, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;-><init>(Lcom/android/OriginalSettings/CryptKeeper;Lcom/android/OriginalSettings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/OriginalSettings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 654
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onPause()V

    .line 301
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 302
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 308
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onResume()V

    .line 315
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 316
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x177

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 323
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 373
    .local v0, state:Lcom/android/OriginalSettings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 375
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onStart()V

    .line 293
    invoke-direct {p0}, Lcom/android/OriginalSettings/CryptKeeper;->setupUi()V

    .line 294
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 360
    invoke-super {p0}, Lcom/android/OriginalSettings/BaseActivity;->onStop()V

    .line 362
    iget-object v0, p0, Lcom/android/OriginalSettings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    return-void
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 8
    .parameter "mLeftTime"

    .prologue
    .line 730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 731
    .local v0, deadline:J
    return-wide v0
.end method

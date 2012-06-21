.class public Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final TAG:Ljava/lang/String; = "SimPukUnlockScreen"


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mDelPinButton:Landroid/view/View;

.field private mDelPinConfirmButton:Landroid/view/View;

.field private mDelPukButton:Landroid/view/View;

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private mFocusedEntry:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastNumber:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/view/View;

.field private mPinConfirmText:Landroid/widget/TextView;

.field private mPinText:Landroid/widget/TextView;

.field private mPukHandler:Landroid/os/Handler;

.field private mPukText:Landroid/widget/TextView;

.field private mSavedNewPin:Ljava/lang/String;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/high16 v7, -0x100

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 93
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 100
    sget-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSavedNewPin:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 112
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 115
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    .line 116
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 117
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 120
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v5, :cond_1

    .line 121
    const v0, 0x109006e

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 129
    :goto_0
    const v0, 0x1020343

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 130
    const v0, 0x1020345

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 131
    const v0, 0x102034d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    .line 132
    const v0, 0x1020346

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 133
    const v0, 0x102034e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    .line 134
    const v0, 0x1020340

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    .line 135
    const v0, 0x1020323

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104037c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 146
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 150
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDirectCallToEcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const v0, 0x102031d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 170
    return-void

    .line 124
    :cond_1
    const v0, 0x109006f

    invoke-virtual {v6, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 126
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPuk()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 426
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    goto :goto_0

    .line 387
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 389
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getSimLockInfoResult()I
    .locals 4

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, result:I
    :try_start_0
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPukRetry()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 187
    :goto_0
    const-string v1, "SimPukUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimLockInfoResult(): num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v0

    .line 185
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10403b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 2
    .parameter "digit"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 467
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 219
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 609
    if-eqz p1, :cond_0

    .line 610
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "onAirplaneModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 612
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 614
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 488
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 489
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "Layout issue break out condition, but execute workaround code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v6, 0x8

    const v5, 0x104037f

    .line 259
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 263
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 264
    .local v2, len:I
    if-lez v2, :cond_1

    .line 265
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 345
    .end local v0           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x1388

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 347
    return-void

    .line 267
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPinButton:Landroid/view/View;

    if-ne p1, v3, :cond_4

    .line 268
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_3

    .line 269
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 270
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 271
    .restart local v0       #digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 272
    .restart local v2       #len:I
    if-lez v2, :cond_1

    .line 273
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 275
    .end local v0           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/view/View;

    if-ne p1, v3, :cond_9

    .line 276
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 277
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v3, v6, :cond_5

    .line 283
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v4, 0x10400d8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 284
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 286
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 287
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 288
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 289
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v6, :cond_7

    .line 293
    :cond_6
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v4, 0x10400d7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 296
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 297
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 298
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 300
    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSavedNewPin:Ljava/lang/String;

    .line 301
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->CONFIRM_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 302
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const v4, 0x104066a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 303
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 308
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSavedNewPin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 311
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v4, 0x10400d6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 312
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 313
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 314
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 316
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto/16 :goto_0

    .line 320
    :cond_9
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 323
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-ne v3, v4, :cond_a

    .line 324
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLastNumber:Ljava/lang/String;

    .line 327
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLastNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 328
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLastNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 330
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 332
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-ne v3, v4, :cond_b

    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 326
    .end local v1           #intent:Landroid/content/Intent;
    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLastNumber:Ljava/lang/String;

    goto :goto_1

    .line 335
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_b
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 337
    .end local v1           #intent:Landroid/content/Intent;
    :cond_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    if-ne v3, v4, :cond_d

    .line 338
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto/16 :goto_0

    .line 340
    :cond_d
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 500
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 503
    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 351
    if-eqz p2, :cond_0

    .line 352
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 353
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 430
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 431
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    iput-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 432
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const v5, 0x104037f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    .line 433
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 457
    :goto_0
    return v3

    .line 436
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .line 437
    .local v2, match:C
    if-eqz v2, :cond_1

    .line 438
    add-int/lit8 v4, v2, -0x30

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 441
    :cond_1
    const/16 v4, 0x43

    if-ne p1, v4, :cond_3

    .line 442
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 443
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 444
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 445
    .local v1, len:I
    if-lez v1, :cond_2

    .line 446
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 448
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x1388

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0

    .line 452
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_3
    const/16 v4, 0x42

    if-ne p1, v4, :cond_4

    .line 453
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto :goto_0

    .line 457
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104037c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 207
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setLockInfoText()V

    .line 209
    return-void
.end method

.method public setLockInfoText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 173
    const-string v0, "SimPukUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLockInfoText(): num_of_retry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040623

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040624

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 470
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 471
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 472
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 474
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 475
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 477
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 475
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

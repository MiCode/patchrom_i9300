.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final LOG_TAG:Ljava/lang/String; = "SimUnlockScreen"

.field static final TAG:Ljava/lang/String; = "SimUnlockScreen"


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLastNumber:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinText:Landroid/widget/TextView;

.field mSimHandler:Landroid/os/Handler;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSlotNum:I

.field private mSlotStr:Ljava/lang/String;

.field private mSlotText:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I

.field private old_Num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

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
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    .line 86
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 88
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 99
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/lang/String;

    const-string v1, "phone"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSlotStr:Ljava/lang/String;

    .line 360
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->old_Num_of_retry:I

    .line 119
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 120
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimHandler:Landroid/os/Handler;

    .line 123
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 124
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 125
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 128
    .local v6, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v7, :cond_1

    .line 129
    const v0, 0x109006b

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 163
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimUnlockScreen: num_of_retry is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const v0, 0x1020343

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 167
    const v0, 0x1020345

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 168
    const v0, 0x1020346

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 169
    const v0, 0x1020347

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x1020323

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104037a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 180
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 184
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDirectCallToEcc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const v0, 0x102031d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v1, 0x104038d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 191
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 198
    return-void

    .line 140
    :cond_1
    const v0, 0x109006c

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/policy/impl/SimUnlockScreen$1;)V

    goto/16 :goto_0

    .line 85
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPin()V
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 436
    :goto_0
    return-void

    .line 376
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->old_Num_of_retry:I

    .line 378
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 380
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;->start()V

    goto :goto_0
.end method

.method private getSimLockInfoResult()I
    .locals 4

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 215
    .local v0, result:I
    :try_start_0
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPinRetry()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 220
    :goto_0
    const-string v1, "SimUnlockScreen"

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

    .line 221
    return v0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10403b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 471
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 623
    const-string v0, "SimUnlockScreen"

    const-string v1, "onAirplaneModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimUnlocked()V

    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 627
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 496
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 497
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v0, v1, :cond_0

    .line 498
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 499
    const-string v0, "SimUnlockScreen"

    const-string v1, "Layout issue break out condition, but execute workaround code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 305
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v3, :cond_2

    .line 306
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 307
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 308
    .local v2, len:I
    if-lez v2, :cond_0

    .line 309
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 310
    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 344
    .end local v0           #digits:Landroid/text/Editable;
    .end local v2           #len:I
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_3

    .line 314
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimLockInfoResult()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    .line 315
    const-string v3, "SimUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(): num_of_retry is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDirectCallToEcc()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 324
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 325
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 341
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iput v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 327
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLastNumber:Ljava/lang/String;

    .line 329
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLastNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 330
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLastNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 332
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 333
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iput v6, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 335
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 338
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 510
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 513
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 440
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 445
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 446
    .local v0, match:C
    if-eqz v0, :cond_2

    .line 447
    add-int/lit8 v2, v0, -0x30

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    goto :goto_0

    .line 450
    :cond_2
    const/16 v2, 0x43

    if-ne p1, v2, :cond_3

    .line 451
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 453
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_0

    .line 458
    :cond_3
    const/16 v2, 0x42

    if-ne p1, v2, :cond_4

    .line 463
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_0

    .line 467
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x104037a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setLockInfoText()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 246
    return-void
.end method

.method public setLockInfoText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 201
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040621

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040622

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->num_of_retry:I

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

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 483
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 486
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 487
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 488
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 489
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 487
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
